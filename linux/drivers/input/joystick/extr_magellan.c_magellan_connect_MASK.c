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
struct serio_driver {int dummy; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; } ;
struct magellan {struct input_dev* dev; int /*<<< orphan*/  phys; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int product; int version; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int* evbit; int /*<<< orphan*/  keybit; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SERIO_MAGELLAN ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct magellan*) ; 
 struct magellan* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * magellan_axes ; 
 int /*<<< orphan*/ * magellan_buttons ; 
 int /*<<< orphan*/  FUNC7 (struct serio*) ; 
 int FUNC8 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC9 (struct serio*,struct magellan*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC12(struct serio *serio, struct serio_driver *drv)
{
	struct magellan *magellan;
	struct input_dev *input_dev;
	int err = -ENOMEM;
	int i;

	magellan = FUNC6(sizeof(struct magellan), GFP_KERNEL);
	input_dev = FUNC1();
	if (!magellan || !input_dev)
		goto fail1;

	magellan->dev = input_dev;
	FUNC11(magellan->phys, sizeof(magellan->phys), "%s/input0", serio->phys);

	input_dev->name = "LogiCad3D Magellan / SpaceMouse";
	input_dev->phys = magellan->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor = SERIO_MAGELLAN;
	input_dev->id.product = 0x0001;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &serio->dev;

	input_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);

	for (i = 0; i < 9; i++)
		FUNC10(magellan_buttons[i], input_dev->keybit);

	for (i = 0; i < 6; i++)
		FUNC4(input_dev, magellan_axes[i], -360, 360, 0, 0);

	FUNC9(serio, magellan);

	err = FUNC8(serio, drv);
	if (err)
		goto fail2;

	err = FUNC3(magellan->dev);
	if (err)
		goto fail3;

	return 0;

 fail3:	FUNC7(serio);
 fail2:	FUNC9(serio, NULL);
 fail1:	FUNC2(input_dev);
	FUNC5(magellan);
	return err;
}