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
typedef  int u8 ;
struct psmouse {int* packet; scalar_t__ pktcnt; scalar_t__ pktsize; int extra_buttons; TYPE_1__* protocol; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef  int s8 ;
typedef  int /*<<< orphan*/  psmouse_ret_t ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BTN_EXTRA ; 
 int /*<<< orphan*/  BTN_SIDE ; 
#define  PSMOUSE_CORTRON 132 
 int /*<<< orphan*/  PSMOUSE_FULL_PACKET ; 
#define  PSMOUSE_GENPS 131 
 int /*<<< orphan*/  PSMOUSE_GOOD_DATA ; 
#define  PSMOUSE_IMEX 130 
#define  PSMOUSE_IMPS 129 
#define  PSMOUSE_THINKPS 128 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  psmouse_a4tech_2wheels ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int*) ; 
 int FUNC6 (int,int) ; 

psmouse_ret_t FUNC7(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	u8 *packet = psmouse->packet;
	int wheel;

	if (psmouse->pktcnt < psmouse->pktsize)
		return PSMOUSE_GOOD_DATA;

	/* Full packet accumulated, process it */

	switch (psmouse->protocol->type) {
	case PSMOUSE_IMPS:
		/* IntelliMouse has scroll wheel */
		FUNC3(dev, REL_WHEEL, -(s8) packet[3]);
		break;

	case PSMOUSE_IMEX:
		/* Scroll wheel and buttons on IntelliMouse Explorer */
		switch (packet[3] & 0xC0) {
		case 0x80: /* vertical scroll on IntelliMouse Explorer 4.0 */
			FUNC3(dev, REL_WHEEL,
					 -FUNC6(packet[3], 5));
			break;
		case 0x40: /* horizontal scroll on IntelliMouse Explorer 4.0 */
			FUNC3(dev, REL_HWHEEL,
					 -FUNC6(packet[3], 5));
			break;
		case 0x00:
		case 0xC0:
			wheel = FUNC6(packet[3], 3);

			/*
			 * Some A4Tech mice have two scroll wheels, with first
			 * one reporting +/-1 in the lower nibble, and second
			 * one reporting +/-2.
			 */
			if (psmouse_a4tech_2wheels && FUNC1(wheel) > 1)
				FUNC3(dev, REL_HWHEEL, wheel / 2);
			else
				FUNC3(dev, REL_WHEEL, -wheel);

			FUNC2(dev, BTN_SIDE,  packet[3] & FUNC0(4));
			FUNC2(dev, BTN_EXTRA, packet[3] & FUNC0(5));
			break;
		}
		break;

	case PSMOUSE_GENPS:
		/* Report scroll buttons on NetMice */
		FUNC3(dev, REL_WHEEL, -(s8) packet[3]);

		/* Extra buttons on Genius NewNet 3D */
		FUNC2(dev, BTN_SIDE,  packet[0] & FUNC0(6));
		FUNC2(dev, BTN_EXTRA, packet[0] & FUNC0(7));
		break;

	case PSMOUSE_THINKPS:
		/* Extra button on ThinkingMouse */
		FUNC2(dev, BTN_EXTRA, packet[0] & FUNC0(3));

		/*
		 * Without this bit of weirdness moving up gives wildly
		 * high Y changes.
		 */
		packet[1] |= (packet[0] & 0x40) << 1;
		break;

	case PSMOUSE_CORTRON:
		/*
		 * Cortron PS2 Trackball reports SIDE button in the
		 * 4th bit of the first byte.
		 */
		FUNC2(dev, BTN_SIDE, packet[0] & FUNC0(3));
		packet[0] |= FUNC0(3);
		break;

	default:
		break;
	}

	/* Generic PS/2 Mouse */
	packet[0] |= psmouse->extra_buttons;
	FUNC5(dev, packet);

	FUNC4(dev);

	return PSMOUSE_FULL_PACKET;
}