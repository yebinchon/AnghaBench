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
struct wacom {int extra_z_bits; int eraser_mask; int flags; int max_x; int max_y; struct input_dev* dev; int /*<<< orphan*/  res_y; int /*<<< orphan*/  res_x; int /*<<< orphan*/  phys; scalar_t__ idx; scalar_t__ tool; } ;
struct serio_driver {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  extra; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; TYPE_2__ id; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {int* evbit; int /*<<< orphan*/  relbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  propbit; int /*<<< orphan*/  absbit; TYPE_3__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_MOUSE ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int F_COVERS_SCREEN ; 
 int F_HAS_SCROLLWHEEL ; 
 int F_HAS_STYLUS2 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INPUT_PROP_DIRECT ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  SERIO_WACOM_IV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wacom*) ; 
 struct wacom* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct serio*) ; 
 int FUNC10 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC11 (struct serio*,struct wacom*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC14 (struct wacom*,struct serio*) ; 

__attribute__((used)) static int FUNC15(struct serio *serio, struct serio_driver *drv)
{
	struct wacom *wacom;
	struct input_dev *input_dev;
	int err = -ENOMEM;

	wacom = FUNC8(sizeof(struct wacom), GFP_KERNEL);
	input_dev = FUNC3();
	if (!wacom || !input_dev)
		goto free_device;

	wacom->dev = input_dev;
	wacom->extra_z_bits = 1;
	wacom->eraser_mask = 0x04;
	wacom->tool = wacom->idx = 0;
	FUNC13(wacom->phys, sizeof(wacom->phys), "%s/input0", serio->phys);
	input_dev->phys = wacom->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor  = SERIO_WACOM_IV;
	input_dev->id.product = serio->id.extra;
	input_dev->dev.parent = &serio->dev;

	input_dev->evbit[0] =
		FUNC0(EV_KEY) | FUNC0(EV_ABS) | FUNC0(EV_REL);
	FUNC12(ABS_MISC, input_dev->absbit);
	FUNC12(BTN_TOOL_PEN, input_dev->keybit);
	FUNC12(BTN_TOOL_RUBBER, input_dev->keybit);
	FUNC12(BTN_TOOL_MOUSE, input_dev->keybit);
	FUNC12(BTN_TOUCH, input_dev->keybit);
	FUNC12(BTN_STYLUS, input_dev->keybit);
	FUNC12(BTN_LEFT, input_dev->keybit);
	FUNC12(BTN_RIGHT, input_dev->keybit);
	FUNC12(BTN_MIDDLE, input_dev->keybit);

	FUNC11(serio, wacom);

	err = FUNC10(serio, drv);
	if (err)
		goto free_device;

	err = FUNC14(wacom, serio);
	if (err)
		goto close_serio;

	FUNC12(INPUT_PROP_DIRECT, input_dev->propbit);
	if (!(wacom->flags & F_COVERS_SCREEN))
		FUNC1(INPUT_PROP_POINTER, input_dev->propbit);

	if (wacom->flags & F_HAS_STYLUS2)
		FUNC1(BTN_STYLUS2, input_dev->keybit);

	if (wacom->flags & F_HAS_SCROLLWHEEL)
		FUNC1(REL_WHEEL, input_dev->relbit);

	FUNC2(wacom->dev, ABS_X, wacom->res_x);
	FUNC2(wacom->dev, ABS_Y, wacom->res_y);
	FUNC6(wacom->dev, ABS_X, 0, wacom->max_x, 0, 0);
	FUNC6(wacom->dev, ABS_Y, 0, wacom->max_y, 0, 0);
	FUNC6(wacom->dev, ABS_PRESSURE, -1,
			     (1 << (7 + wacom->extra_z_bits)) - 1, 0, 0);

	err = FUNC5(wacom->dev);
	if (err)
		goto close_serio;

	return 0;

close_serio:
	FUNC9(serio);
free_device:
	FUNC11(serio, NULL);
	FUNC4(input_dev);
	FUNC7(wacom);
	return err;
}