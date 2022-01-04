package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class OptionState extends FlxState
{
	var backbutton:FlxButton;
	var backtext:FlxText;
	var optiontext:FlxText;

	public function clickedback()
	{
		FlxG.switchState(new TitleState());
	}

	override public function create()
	{
		// adding the options music in.
		FlxG.sound.play(AssetPaths.pongsettings__ogg, true);

		optiontext = new FlxText(110, 50, "options coming soon.");
		optiontext.size = 30;
		add(optiontext);

		backbutton = new FlxButton(15, 425, clickedback);
		backbutton.setGraphicSize(45, 40);
		add(backbutton);

		backtext = new FlxText(50, 428, "<");
		backtext.color = FlxColor.BLACK;
		backtext.setGraphicSize(30, 25);
		add(backtext);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
