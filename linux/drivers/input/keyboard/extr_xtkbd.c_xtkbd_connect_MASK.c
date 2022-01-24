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
struct xtkbd {struct input_dev* dev; int /*<<< orphan*/ * keycode; int /*<<< orphan*/  phys; struct serio* serio; } ;
struct serio_driver {int dummy; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int* evbit; int keycodesize; int /*<<< orphan*/  keybit; int /*<<< orphan*/  keycodemax; int /*<<< orphan*/ * keycode; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_XTKBD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct xtkbd*) ; 
 struct xtkbd* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct serio*) ; 
 int FUNC10 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC11 (struct serio*,struct xtkbd*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  xtkbd_keycode ; 

__attribute__((used)) static int FUNC14(struct serio *serio, struct serio_driver *drv)
{
	struct xtkbd *xtkbd;
	struct input_dev *input_dev;
	int err = -ENOMEM;
	int i;

	xtkbd = FUNC7(sizeof(struct xtkbd), GFP_KERNEL);
	input_dev = FUNC3();
	if (!xtkbd || !input_dev)
		goto fail1;

	xtkbd->serio = serio;
	xtkbd->dev = input_dev;
	FUNC13(xtkbd->phys, sizeof(xtkbd->phys), "%s/input0", serio->phys);
	FUNC8(xtkbd->keycode, xtkbd_keycode, sizeof(xtkbd->keycode));

	input_dev->name = "XT Keyboard";
	input_dev->phys = xtkbd->phys;
	input_dev->id.bustype = BUS_XTKBD;
	input_dev->id.vendor  = 0x0001;
	input_dev->id.product = 0x0001;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &serio->dev;

	input_dev->evbit[0] = FUNC1(EV_KEY) | FUNC1(EV_REP);
	input_dev->keycode = xtkbd->keycode;
	input_dev->keycodesize = sizeof(unsigned char);
	input_dev->keycodemax = FUNC0(xtkbd_keycode);

	for (i = 0; i < 255; i++)
		FUNC12(xtkbd->keycode[i], input_dev->keybit);
	FUNC2(0, input_dev->keybit);

	FUNC11(serio, xtkbd);

	err = FUNC10(serio, drv);
	if (err)
		goto fail2;

	err = FUNC5(xtkbd->dev);
	if (err)
		goto fail3;

	return 0;

 fail3:	FUNC9(serio);
 fail2:	FUNC11(serio, NULL);
 fail1:	FUNC4(input_dev);
	FUNC6(xtkbd);
	return err;
}