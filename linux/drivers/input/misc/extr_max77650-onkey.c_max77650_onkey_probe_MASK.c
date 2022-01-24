#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct max77650_onkey {TYPE_2__* input; int /*<<< orphan*/  code; } ;
struct TYPE_5__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_6__ {char* name; char* phys; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int ENODEV ; 
 int ENOMEM ; 
 unsigned int EV_KEY ; 
 unsigned int EV_SW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  MAX77650_ONKEY_MODE_MASK ; 
 int MAX77650_ONKEY_MODE_PUSH ; 
 int MAX77650_ONKEY_MODE_SLIDE ; 
 int /*<<< orphan*/  MAX77650_REG_CNFG_GLBL ; 
 struct regmap* FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device*,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct device*) ; 
 struct max77650_onkey* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct max77650_onkey*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max77650_onkey_falling ; 
 int /*<<< orphan*/  max77650_onkey_rising ; 
 int FUNC8 (struct platform_device*,char*) ; 
 int FUNC9 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int irq_r, irq_f, error, mode;
	struct max77650_onkey *onkey;
	struct device *dev, *parent;
	struct regmap *map;
	unsigned int type;

	dev = &pdev->dev;
	parent = dev->parent;

	map = FUNC0(parent, NULL);
	if (!map)
		return -ENODEV;

	onkey = FUNC4(dev, sizeof(*onkey), GFP_KERNEL);
	if (!onkey)
		return -ENOMEM;

	error = FUNC2(dev, "linux,code", &onkey->code);
	if (error)
		onkey->code = KEY_POWER;

	if (FUNC1(dev, "maxim,onkey-slide")) {
		mode = MAX77650_ONKEY_MODE_SLIDE;
		type = EV_SW;
	} else {
		mode = MAX77650_ONKEY_MODE_PUSH;
		type = EV_KEY;
	}

	error = FUNC9(map, MAX77650_REG_CNFG_GLBL,
				   MAX77650_ONKEY_MODE_MASK, mode);
	if (error)
		return error;

	irq_f = FUNC8(pdev, "nEN_F");
	if (irq_f < 0)
		return irq_f;

	irq_r = FUNC8(pdev, "nEN_R");
	if (irq_r < 0)
		return irq_r;

	onkey->input = FUNC3(dev);
	if (!onkey->input)
		return -ENOMEM;

	onkey->input->name = "max77650_onkey";
	onkey->input->phys = "max77650_onkey/input0";
	onkey->input->id.bustype = BUS_I2C;
	FUNC7(onkey->input, type, onkey->code);

	error = FUNC5(dev, irq_f, max77650_onkey_falling,
					     IRQF_ONESHOT, "onkey-down", onkey);
	if (error < 0)
		return error;

	error = FUNC5(dev, irq_r, max77650_onkey_rising,
					     IRQF_ONESHOT, "onkey-up", onkey);
	if (error < 0)
		return error;

	return FUNC6(onkey->input);
}