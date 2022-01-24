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
struct zhenhua {struct input_dev* dev; int /*<<< orphan*/  phys; } ;
struct serio_driver {int dummy; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int product; int version; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/ * evbit; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_RZ ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SERIO_ZHENHUA ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zhenhua*) ; 
 struct zhenhua* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct serio*) ; 
 int FUNC8 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC9 (struct serio*,struct zhenhua*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC11(struct serio *serio, struct serio_driver *drv)
{
	struct zhenhua *zhenhua;
	struct input_dev *input_dev;
	int err = -ENOMEM;

	zhenhua = FUNC6(sizeof(struct zhenhua), GFP_KERNEL);
	input_dev = FUNC1();
	if (!zhenhua || !input_dev)
		goto fail1;

	zhenhua->dev = input_dev;
	FUNC10(zhenhua->phys, sizeof(zhenhua->phys), "%s/input0", serio->phys);

	input_dev->name = "Zhen Hua 5-byte device";
	input_dev->phys = zhenhua->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor = SERIO_ZHENHUA;
	input_dev->id.product = 0x0001;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &serio->dev;

	input_dev->evbit[0] = FUNC0(EV_ABS);
	FUNC4(input_dev, ABS_X, 50, 200, 0, 0);
	FUNC4(input_dev, ABS_Y, 50, 200, 0, 0);
	FUNC4(input_dev, ABS_Z, 50, 200, 0, 0);
	FUNC4(input_dev, ABS_RZ, 50, 200, 0, 0);

	FUNC9(serio, zhenhua);

	err = FUNC8(serio, drv);
	if (err)
		goto fail2;

	err = FUNC3(zhenhua->dev);
	if (err)
		goto fail3;

	return 0;

 fail3:	FUNC7(serio);
 fail2:	FUNC9(serio, NULL);
 fail1:	FUNC2(input_dev);
	FUNC5(zhenhua);
	return err;
}