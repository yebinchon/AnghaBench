#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;
struct input_polled_dev {int poll_interval; struct input_dev* input; int /*<<< orphan*/  poll; struct gpio_mouse* private; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct gpio_mouse {int scan_ms; void* bright; void* bmiddle; void* bleft; void* right; void* left; void* down; void* up; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,char*,int*) ; 
 void* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct input_polled_dev* FUNC8 (struct device*) ; 
 struct gpio_mouse* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_mouse_scan ; 
 int FUNC10 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct input_polled_dev*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct gpio_mouse *gmouse;
	struct input_polled_dev *input_poll;
	struct input_dev *input;
	int ret;

	gmouse = FUNC9(dev, sizeof(*gmouse), GFP_KERNEL);
	if (!gmouse)
		return -ENOMEM;

	/* Assign some default scanning time */
	ret = FUNC5(dev, "scan-interval-ms",
				       &gmouse->scan_ms);
	if (ret || gmouse->scan_ms == 0) {
		FUNC4(dev, "invalid scan time, set to 50 ms\n");
		gmouse->scan_ms = 50;
	}

	gmouse->up = FUNC6(dev, "up", GPIOD_IN);
	if (FUNC0(gmouse->up))
		return FUNC1(gmouse->up);
	gmouse->down = FUNC6(dev, "down", GPIOD_IN);
	if (FUNC0(gmouse->down))
		return FUNC1(gmouse->down);
	gmouse->left = FUNC6(dev, "left", GPIOD_IN);
	if (FUNC0(gmouse->left))
		return FUNC1(gmouse->left);
	gmouse->right = FUNC6(dev, "right", GPIOD_IN);
	if (FUNC0(gmouse->right))
		return FUNC1(gmouse->right);

	gmouse->bleft = FUNC7(dev, "button-left", GPIOD_IN);
	if (FUNC0(gmouse->bleft))
		return FUNC1(gmouse->bleft);
	gmouse->bmiddle = FUNC7(dev, "button-middle",
						  GPIOD_IN);
	if (FUNC0(gmouse->bmiddle))
		return FUNC1(gmouse->bmiddle);
	gmouse->bright = FUNC7(dev, "button-right",
						 GPIOD_IN);
	if (FUNC0(gmouse->bright))
		return FUNC1(gmouse->bright);

	input_poll = FUNC8(dev);
	if (!input_poll) {
		FUNC3(dev, "not enough memory for input device\n");
		return -ENOMEM;
	}

	FUNC12(pdev, input_poll);

	/* set input-polldev handlers */
	input_poll->private = gmouse;
	input_poll->poll = gpio_mouse_scan;
	input_poll->poll_interval = gmouse->scan_ms;

	input = input_poll->input;
	input->name = pdev->name;
	input->id.bustype = BUS_HOST;
	input->dev.parent = &pdev->dev;

	FUNC11(input, EV_REL, REL_X);
	FUNC11(input, EV_REL, REL_Y);
	if (gmouse->bleft)
		FUNC11(input, EV_KEY, BTN_LEFT);
	if (gmouse->bmiddle)
		FUNC11(input, EV_KEY, BTN_MIDDLE);
	if (gmouse->bright)
		FUNC11(input, EV_KEY, BTN_RIGHT);

	ret = FUNC10(input_poll);
	if (ret) {
		FUNC3(dev, "could not register input device\n");
		return ret;
	}

	FUNC2(dev, "%d ms scan time, buttons: %s%s%s\n",
		gmouse->scan_ms,
		gmouse->bleft ? "" : "left ",
		gmouse->bmiddle ? "" : "middle ",
		gmouse->bright ? "" : "right");

	return 0;
}