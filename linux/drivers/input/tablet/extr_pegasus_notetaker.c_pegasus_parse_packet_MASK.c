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
typedef  int /*<<< orphan*/  u16 ;
struct pegasus {unsigned char* data; TYPE_1__* usbdev; int /*<<< orphan*/  init; struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
#define  BATTERY_GOOD 131 
#define  BATTERY_LOW 130 
#define  BATTERY_NO_REPORT 129 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 unsigned char BUTTON_PRESSED ; 
 unsigned char PEN_BUTTON_PRESSED ; 
 unsigned char PEN_TIP ; 
#define  SPECIAL_COMMAND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pegasus *pegasus)
{
	unsigned char *data = pegasus->data;
	struct input_dev *dev = pegasus->dev;
	u16 x, y;

	switch (data[0]) {
	case SPECIAL_COMMAND:
		/* device button pressed */
		if (data[1] == BUTTON_PRESSED)
			FUNC5(&pegasus->init);

		break;

	/* xy data */
	case BATTERY_LOW:
		FUNC0(&dev->dev, "Pen battery low\n");
		/* fall through */

	case BATTERY_NO_REPORT:
	case BATTERY_GOOD:
		x = FUNC4((__le16 *)&data[2]);
		y = FUNC4((__le16 *)&data[4]);

		/* pen-up event */
		if (x == 0 && y == 0)
			break;

		FUNC2(dev, BTN_TOUCH, data[1] & PEN_TIP);
		FUNC2(dev, BTN_RIGHT, data[1] & PEN_BUTTON_PRESSED);
		FUNC2(dev, BTN_TOOL_PEN, 1);
		FUNC1(dev, ABS_X, (s16)x);
		FUNC1(dev, ABS_Y, y);

		FUNC3(dev);
		break;

	default:
		FUNC0(&pegasus->usbdev->dev,
			      "unknown answer from device\n");
	}
}