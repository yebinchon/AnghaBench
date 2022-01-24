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
struct vsxxxaa {int /*<<< orphan*/  phys; int /*<<< orphan*/  name; struct serio* serio; struct input_dev* dev; } ;
struct serio_driver {int dummy; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  relbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vsxxxaa*) ; 
 struct vsxxxaa* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct serio*) ; 
 int FUNC8 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC9 (struct serio*,struct vsxxxaa*) ; 
 int /*<<< orphan*/  FUNC10 (struct serio*,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC13(struct serio *serio, struct serio_driver *drv)
{
	struct vsxxxaa *mouse;
	struct input_dev *input_dev;
	int err = -ENOMEM;

	mouse = FUNC6(sizeof(struct vsxxxaa), GFP_KERNEL);
	input_dev = FUNC1();
	if (!mouse || !input_dev)
		goto fail1;

	mouse->dev = input_dev;
	mouse->serio = serio;
	FUNC12(mouse->name, "DEC VSXXX-AA/-GA mouse or VSXXX-AB digitizer",
		 sizeof(mouse->name));
	FUNC11(mouse->phys, sizeof(mouse->phys), "%s/input0", serio->phys);

	input_dev->name = mouse->name;
	input_dev->phys = mouse->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->dev.parent = &serio->dev;

	FUNC0(EV_KEY, input_dev->evbit);		/* We have buttons */
	FUNC0(EV_REL, input_dev->evbit);
	FUNC0(EV_ABS, input_dev->evbit);
	FUNC0(BTN_LEFT, input_dev->keybit);		/* We have 3 buttons */
	FUNC0(BTN_MIDDLE, input_dev->keybit);
	FUNC0(BTN_RIGHT, input_dev->keybit);
	FUNC0(BTN_TOUCH, input_dev->keybit);	/* ...and Tablet */
	FUNC0(REL_X, input_dev->relbit);
	FUNC0(REL_Y, input_dev->relbit);
	FUNC4(input_dev, ABS_X, 0, 1023, 0, 0);
	FUNC4(input_dev, ABS_Y, 0, 1023, 0, 0);

	FUNC9(serio, mouse);

	err = FUNC8(serio, drv);
	if (err)
		goto fail2;

	/*
	 * Request selftest. Standard packet format and differential
	 * mode will be requested after the device ID'ed successfully.
	 */
	FUNC10(serio, 'T'); /* Test */

	err = FUNC3(input_dev);
	if (err)
		goto fail3;

	return 0;

 fail3:	FUNC7(serio);
 fail2:	FUNC9(serio, NULL);
 fail1:	FUNC2(input_dev);
	FUNC5(mouse);
	return err;
}