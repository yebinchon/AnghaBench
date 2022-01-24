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
struct psmouse {unsigned char* packet; struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int fw_version; int* capabilities; scalar_t__ jumpy_cursor; } ;
struct elantech_data {int single_finger_reports; unsigned char y_max; TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_FORWARD ; 
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_TRIPLETAP ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ETP_CAP_HAS_ROCKER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,unsigned char) ; 

__attribute__((used)) static void FUNC5(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	struct elantech_data *etd = psmouse->private;
	unsigned char *packet = psmouse->packet;
	int fingers;

	if (etd->info.fw_version < 0x020000) {
		/*
		 * byte 0:  D   U  p1  p2   1  p3   R   L
		 * byte 1:  f   0  th  tw  x9  x8  y9  y8
		 */
		fingers = ((packet[1] & 0x80) >> 7) +
				((packet[1] & 0x30) >> 4);
	} else {
		/*
		 * byte 0: n1  n0  p2  p1   1  p3   R   L
		 * byte 1:  0   0   0   0  x9  x8  y9  y8
		 */
		fingers = (packet[0] & 0xc0) >> 6;
	}

	if (etd->info.jumpy_cursor) {
		if (fingers != 1) {
			etd->single_finger_reports = 0;
		} else if (etd->single_finger_reports < 2) {
			/* Discard first 2 reports of one finger, bogus */
			etd->single_finger_reports++;
			FUNC0("discarding packet\n");
			return;
		}
	}

	FUNC2(dev, BTN_TOUCH, fingers != 0);

	/*
	 * byte 2: x7  x6  x5  x4  x3  x2  x1  x0
	 * byte 3: y7  y6  y5  y4  y3  y2  y1  y0
	 */
	if (fingers) {
		FUNC1(dev, ABS_X,
			((packet[1] & 0x0c) << 6) | packet[2]);
		FUNC1(dev, ABS_Y,
			etd->y_max - (((packet[1] & 0x03) << 8) | packet[3]));
	}

	FUNC2(dev, BTN_TOOL_FINGER, fingers == 1);
	FUNC2(dev, BTN_TOOL_DOUBLETAP, fingers == 2);
	FUNC2(dev, BTN_TOOL_TRIPLETAP, fingers == 3);

	FUNC4(dev, packet[0]);

	if (etd->info.fw_version < 0x020000 &&
	    (etd->info.capabilities[0] & ETP_CAP_HAS_ROCKER)) {
		/* rocker up */
		FUNC2(dev, BTN_FORWARD, packet[0] & 0x40);
		/* rocker down */
		FUNC2(dev, BTN_BACK, packet[0] & 0x80);
	}

	FUNC3(dev);
}