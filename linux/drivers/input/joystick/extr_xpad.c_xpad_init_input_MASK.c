#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_xpad {scalar_t__ xtype; int mapping; int input_created; struct input_dev* dev; TYPE_2__* intf; int /*<<< orphan*/  udev; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int product; } ;
struct input_dev {int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ dev; TYPE_3__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int MAP_DPAD_TO_BUTTONS ; 
 int MAP_STICKS_TO_NULL ; 
 int MAP_TRIGGERS_TO_BUTTONS ; 
 scalar_t__ XTYPE_XBOX360 ; 
 scalar_t__ XTYPE_XBOX360W ; 
 scalar_t__ XTYPE_XBOXONE ; 
 struct input_dev* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__* xpad360_btn ; 
 scalar_t__* xpad_abs ; 
 scalar_t__* xpad_abs_pad ; 
 scalar_t__* xpad_abs_triggers ; 
 scalar_t__* xpad_btn ; 
 scalar_t__* xpad_btn_pad ; 
 scalar_t__* xpad_btn_triggers ; 
 int /*<<< orphan*/  xpad_close ; 
 scalar_t__* xpad_common_btn ; 
 int FUNC7 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xpad*) ; 
 int FUNC9 (struct usb_xpad*) ; 
 int /*<<< orphan*/  xpad_open ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct usb_xpad *xpad)
{
	struct input_dev *input_dev;
	int i, error;

	input_dev = FUNC0();
	if (!input_dev)
		return -ENOMEM;

	xpad->dev = input_dev;
	input_dev->name = xpad->name;
	input_dev->phys = xpad->phys;
	FUNC6(xpad->udev, &input_dev->id);

	if (xpad->xtype == XTYPE_XBOX360W) {
		/* x360w controllers and the receiver have different ids */
		input_dev->id.product = 0x02a1;
	}

	input_dev->dev.parent = &xpad->intf->dev;

	FUNC5(input_dev, xpad);

	if (xpad->xtype != XTYPE_XBOX360W) {
		input_dev->open = xpad_open;
		input_dev->close = xpad_close;
	}

	if (!(xpad->mapping & MAP_STICKS_TO_NULL)) {
		/* set up axes */
		for (i = 0; xpad_abs[i] >= 0; i++)
			FUNC10(input_dev, xpad_abs[i]);
	}

	/* set up standard buttons */
	for (i = 0; xpad_common_btn[i] >= 0; i++)
		FUNC4(input_dev, EV_KEY, xpad_common_btn[i]);

	/* set up model-specific ones */
	if (xpad->xtype == XTYPE_XBOX360 || xpad->xtype == XTYPE_XBOX360W ||
	    xpad->xtype == XTYPE_XBOXONE) {
		for (i = 0; xpad360_btn[i] >= 0; i++)
			FUNC4(input_dev, EV_KEY, xpad360_btn[i]);
	} else {
		for (i = 0; xpad_btn[i] >= 0; i++)
			FUNC4(input_dev, EV_KEY, xpad_btn[i]);
	}

	if (xpad->mapping & MAP_DPAD_TO_BUTTONS) {
		for (i = 0; xpad_btn_pad[i] >= 0; i++)
			FUNC4(input_dev, EV_KEY,
					     xpad_btn_pad[i]);
	}

	/*
	 * This should be a simple else block. However historically
	 * xbox360w has mapped DPAD to buttons while xbox360 did not. This
	 * made no sense, but now we can not just switch back and have to
	 * support both behaviors.
	 */
	if (!(xpad->mapping & MAP_DPAD_TO_BUTTONS) ||
	    xpad->xtype == XTYPE_XBOX360W) {
		for (i = 0; xpad_abs_pad[i] >= 0; i++)
			FUNC10(input_dev, xpad_abs_pad[i]);
	}

	if (xpad->mapping & MAP_TRIGGERS_TO_BUTTONS) {
		for (i = 0; xpad_btn_triggers[i] >= 0; i++)
			FUNC4(input_dev, EV_KEY,
					     xpad_btn_triggers[i]);
	} else {
		for (i = 0; xpad_abs_triggers[i] >= 0; i++)
			FUNC10(input_dev, xpad_abs_triggers[i]);
	}

	error = FUNC7(xpad);
	if (error)
		goto err_free_input;

	error = FUNC9(xpad);
	if (error)
		goto err_destroy_ff;

	error = FUNC3(xpad->dev);
	if (error)
		goto err_disconnect_led;

	xpad->input_created = true;
	return 0;

err_disconnect_led:
	FUNC8(xpad);
err_destroy_ff:
	FUNC1(input_dev);
err_free_input:
	FUNC2(input_dev);
	return error;
}