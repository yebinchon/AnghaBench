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
struct elantech_data {int y_max; int width; TYPE_1__* mt; } ;
struct TYPE_2__ {unsigned char x; int y; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_TOOL_WIDTH ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	struct elantech_data *etd = psmouse->private;
	unsigned char *packet = psmouse->packet;
	int id = ((packet[3] & 0xe0) >> 5) - 1;
	int pres, traces;

	if (id < 0)
		return;

	etd->mt[id].x = ((packet[1] & 0x0f) << 8) | packet[2];
	etd->mt[id].y = etd->y_max - (((packet[4] & 0x0f) << 8) | packet[5]);
	pres = (packet[1] & 0xf0) | ((packet[4] & 0xf0) >> 4);
	traces = (packet[0] & 0xf0) >> 4;

	FUNC2(dev, id);
	FUNC1(dev, MT_TOOL_FINGER, true);

	FUNC3(dev, ABS_MT_POSITION_X, etd->mt[id].x);
	FUNC3(dev, ABS_MT_POSITION_Y, etd->mt[id].y);
	FUNC3(dev, ABS_MT_PRESSURE, pres);
	FUNC3(dev, ABS_MT_TOUCH_MAJOR, traces * etd->width);
	/* report this for backwards compatibility */
	FUNC3(dev, ABS_TOOL_WIDTH, traces);

	FUNC0(psmouse);
}