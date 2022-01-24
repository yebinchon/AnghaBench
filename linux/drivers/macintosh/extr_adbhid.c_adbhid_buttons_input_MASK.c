#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int original_handler_id; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_BRIGHTNESSDOWN ; 
 int /*<<< orphan*/  KEY_BRIGHTNESSUP ; 
 int /*<<< orphan*/  KEY_EJECTCD ; 
 int /*<<< orphan*/  KEY_KBDILLUMDOWN ; 
 int /*<<< orphan*/  KEY_KBDILLUMTOGGLE ; 
 int /*<<< orphan*/  KEY_KBDILLUMUP ; 
 int /*<<< orphan*/  KEY_MUTE ; 
 int /*<<< orphan*/  KEY_SOUND ; 
 int /*<<< orphan*/  KEY_SWITCHVIDEOMODE ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 TYPE_1__** adbhid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char,unsigned char,unsigned char,unsigned char) ; 

__attribute__((used)) static void
FUNC6(unsigned char *data, int nb, int autopoll)
{
	int id = (data[0] >> 4) & 0x0f;

	if (!adbhid[id]) {
		FUNC4("ADB HID on ID %d not yet registered\n", id);
		return;
	}

	switch (adbhid[id]->original_handler_id) {
	default:
	case 0x02: /* Adjustable keyboard button device */
	  {
		int down = (data[1] == (data[1] & 0xf));

		switch (data[1] & 0x0f) {
		case 0x0:	/* microphone */
			FUNC0(adbhid[id]->input, KEY_SOUND, down);
			break;

		case 0x1:	/* mute */
			FUNC0(adbhid[id]->input, KEY_MUTE, down);
			break;

		case 0x2:	/* volume decrease */
			FUNC0(adbhid[id]->input, KEY_VOLUMEDOWN, down);
			break;

		case 0x3:	/* volume increase */
			FUNC0(adbhid[id]->input, KEY_VOLUMEUP, down);
			break;

		default:
			FUNC5("Unhandled ADB_MISC event %02x, %02x, %02x, %02x\n",
				data[0], data[1], data[2], data[3]);
			break;
		}
	  }
	  break;

	case 0x1f: /* Powerbook button device */
	  {
		int down = (data[1] == (data[1] & 0xf));

		/*
		 * XXX: Where is the contrast control for the passive?
		 *  -- Cort
		 */

		switch (data[1] & 0x0f) {
		case 0x8:	/* mute */
			FUNC0(adbhid[id]->input, KEY_MUTE, down);
			break;

		case 0x7:	/* volume decrease */
			FUNC0(adbhid[id]->input, KEY_VOLUMEDOWN, down);
			break;

		case 0x6:	/* volume increase */
			FUNC0(adbhid[id]->input, KEY_VOLUMEUP, down);
			break;

		case 0xb:	/* eject */
			FUNC0(adbhid[id]->input, KEY_EJECTCD, down);
			break;

		case 0xa:	/* brightness decrease */
#ifdef CONFIG_PMAC_BACKLIGHT
			if (down)
				pmac_backlight_key_down();
#endif
			FUNC0(adbhid[id]->input, KEY_BRIGHTNESSDOWN, down);
			break;

		case 0x9:	/* brightness increase */
#ifdef CONFIG_PMAC_BACKLIGHT
			if (down)
				pmac_backlight_key_up();
#endif
			FUNC0(adbhid[id]->input, KEY_BRIGHTNESSUP, down);
			break;

		case 0xc:	/* videomode switch */
			FUNC0(adbhid[id]->input, KEY_SWITCHVIDEOMODE, down);
			break;

		case 0xd:	/* keyboard illumination toggle */
			FUNC0(adbhid[id]->input, KEY_KBDILLUMTOGGLE, down);
			break;

		case 0xe:	/* keyboard illumination decrease */
			FUNC0(adbhid[id]->input, KEY_KBDILLUMDOWN, down);
			break;

		case 0xf:
			switch (data[1]) {
			case 0x8f:
			case 0x0f:
				/* keyboard illumination increase */
				FUNC0(adbhid[id]->input, KEY_KBDILLUMUP, down);
				break;

			case 0x7f:
			case 0xff:
				/* keypad overlay toogle */
				break;

			default:
				FUNC5("Unhandled ADB_MISC event %02x, %02x, %02x, %02x\n",
					data[0], data[1], data[2], data[3]);
				break;
			}
			break;
		default:
			FUNC5("Unhandled ADB_MISC event %02x, %02x, %02x, %02x\n",
				data[0], data[1], data[2], data[3]);
			break;
		}
	  }
	  break;
	}

	FUNC1(adbhid[id]->input);
}