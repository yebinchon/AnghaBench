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
struct tsc_ser {struct input_dev* dev; int /*<<< orphan*/  phys; struct serio* serio; } ;
struct serio_driver {int dummy; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int product; int version; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int* evbit; int /*<<< orphan*/  keybit; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SERIO_TSC40 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tsc_ser*) ; 
 struct tsc_ser* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct serio*) ; 
 int FUNC9 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC10 (struct serio*,struct tsc_ser*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC12(struct serio *serio, struct serio_driver *drv)
{
	struct tsc_ser *ptsc;
	struct input_dev *input_dev;
	int error;

	ptsc = FUNC7(sizeof(struct tsc_ser), GFP_KERNEL);
	input_dev = FUNC2();
	if (!ptsc || !input_dev) {
		error = -ENOMEM;
		goto fail1;
	}

	ptsc->serio = serio;
	ptsc->dev = input_dev;
	FUNC11(ptsc->phys, sizeof(ptsc->phys), "%s/input0", serio->phys);

	input_dev->name = "TSC-10/25/40 Serial TouchScreen";
	input_dev->phys = ptsc->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor = SERIO_TSC40;
	input_dev->id.product = 40;
	input_dev->id.version = 0x0001;
	input_dev->dev.parent = &serio->dev;

	input_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);
	FUNC1(BTN_TOUCH, input_dev->keybit);
	FUNC5(ptsc->dev, ABS_X, 0, 0x3ff, 0, 0);
	FUNC5(ptsc->dev, ABS_Y, 0, 0x3ff, 0, 0);

	FUNC10(serio, ptsc);

	error = FUNC9(serio, drv);
	if (error)
		goto fail2;

	error = FUNC4(ptsc->dev);
	if (error)
		goto fail3;

	return 0;

fail3:
	FUNC8(serio);
fail2:
	FUNC10(serio, NULL);
fail1:
	FUNC3(input_dev);
	FUNC6(ptsc);
	return error;
}