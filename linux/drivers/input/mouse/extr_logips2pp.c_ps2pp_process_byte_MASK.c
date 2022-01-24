#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct psmouse {int* packet; int pktcnt; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  psmouse_ret_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_EXTRA ; 
 int /*<<< orphan*/  BTN_FORWARD ; 
 int /*<<< orphan*/  BTN_SIDE ; 
 int /*<<< orphan*/  BTN_TASK ; 
 int /*<<< orphan*/  PSMOUSE_FULL_PACKET ; 
 int /*<<< orphan*/  PSMOUSE_GOOD_DATA ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static psmouse_ret_t FUNC8(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	u8 *packet = psmouse->packet;

	if (psmouse->pktcnt < 3)
		return PSMOUSE_GOOD_DATA;

/*
 * Full packet accumulated, process it
 */

	if ((packet[0] & 0x48) == 0x48 && (packet[1] & 0x02) == 0x02) {

		/* Logitech extended packet */
		switch ((packet[1] >> 4) | (packet[0] & 0x30)) {

		case 0x0d: /* Mouse extra info */

			FUNC2(dev,
				packet[2] & 0x80 ? REL_HWHEEL : REL_WHEEL,
				-FUNC7(packet[2], 3));
			FUNC1(dev, BTN_SIDE,  packet[2] & FUNC0(4));
			FUNC1(dev, BTN_EXTRA, packet[2] & FUNC0(5));

			break;

		case 0x0e: /* buttons 4, 5, 6, 7, 8, 9, 10 info */

			FUNC1(dev, BTN_SIDE,    packet[2] & FUNC0(0));
			FUNC1(dev, BTN_EXTRA,   packet[2] & FUNC0(1));
			FUNC1(dev, BTN_TASK,    packet[2] & FUNC0(2));
			FUNC1(dev, BTN_BACK,    packet[2] & FUNC0(3));
			FUNC1(dev, BTN_FORWARD, packet[2] & FUNC0(4));

			break;

		case 0x0f: /* TouchPad extra info */

			FUNC2(dev,
				packet[2] & 0x08 ? REL_HWHEEL : REL_WHEEL,
				-FUNC7(packet[2] >> 4, 3));
			packet[0] = packet[2] | FUNC0(3);
			break;

		default:
			FUNC4(psmouse,
				    "Received PS2++ packet #%x, but don't know how to handle.\n",
				    (packet[1] >> 4) | (packet[0] & 0x30));
			break;
		}

		FUNC5(dev, packet[0]);

	} else {
		/* Standard PS/2 motion data */
		FUNC6(dev, packet);
	}

	FUNC3(dev);

	return PSMOUSE_FULL_PACKET;

}