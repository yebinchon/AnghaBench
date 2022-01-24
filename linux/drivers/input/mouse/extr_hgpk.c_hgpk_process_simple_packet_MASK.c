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
struct psmouse {unsigned char* packet; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 scalar_t__ FUNC0 (struct psmouse*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*,char*,...) ; 
 scalar_t__ tpdebug ; 

__attribute__((used)) static void FUNC6(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	unsigned char *packet = psmouse->packet;
	int left = packet[0] & 1;
	int right = (packet[0] >> 1) & 1;
	int x = packet[1] - ((packet[0] << 4) & 0x100);
	int y = ((packet[0] << 3) & 0x100) - packet[2];

	if (packet[0] & 0xc0)
		FUNC5(psmouse,
			    "overflow -- 0x%02x 0x%02x 0x%02x\n",
			    packet[0], packet[1], packet[2]);

	if (FUNC0(psmouse, x, y)) {
		if (tpdebug)
			FUNC5(psmouse, "discarding\n");
		return;
	}

	FUNC1(psmouse, left, right, x, y);

	if (tpdebug)
		FUNC5(psmouse, "l=%d r=%d x=%d y=%d\n",
			    left, right, x, y);

	FUNC2(dev, BTN_LEFT, left);
	FUNC2(dev, BTN_RIGHT, right);

	FUNC3(dev, REL_X, x);
	FUNC3(dev, REL_Y, y);

	FUNC4(dev);
}