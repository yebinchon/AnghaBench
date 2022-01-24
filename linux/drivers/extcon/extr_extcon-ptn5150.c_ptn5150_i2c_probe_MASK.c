#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ptn5150_info {scalar_t__ irq; struct device* dev; void* edev; void* int_gpiod; void* regmap; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  mutex; void* vbus_gpiod; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 void* FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,void*) ; 
 void* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ptn5150_info* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ptn5150_info*) ; 
 int FUNC10 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct ptn5150_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptn5150_extcon_cable ; 
 int FUNC14 (struct ptn5150_info*) ; 
 int /*<<< orphan*/  ptn5150_irq_handler ; 
 int /*<<< orphan*/  ptn5150_irq_work ; 
 int /*<<< orphan*/  ptn5150_regmap_config ; 

__attribute__((used)) static int FUNC15(struct i2c_client *i2c,
				 const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct device_node *np = i2c->dev.of_node;
	struct ptn5150_info *info;
	int ret;

	if (!np)
		return -EINVAL;

	info = FUNC7(&i2c->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	FUNC12(i2c, info);

	info->dev = &i2c->dev;
	info->i2c = i2c;
	info->int_gpiod = FUNC6(&i2c->dev, "int", GPIOD_IN);
	if (FUNC1(info->int_gpiod)) {
		FUNC3(dev, "failed to get INT GPIO\n");
		return FUNC2(info->int_gpiod);
	}
	info->vbus_gpiod = FUNC6(&i2c->dev, "vbus", GPIOD_IN);
	if (FUNC1(info->vbus_gpiod)) {
		FUNC3(dev, "failed to get VBUS GPIO\n");
		return FUNC2(info->vbus_gpiod);
	}
	ret = FUNC10(info->vbus_gpiod, 0);
	if (ret) {
		FUNC3(dev, "failed to set VBUS GPIO direction\n");
		return -EINVAL;
	}

	FUNC13(&info->mutex);

	FUNC0(&info->irq_work, ptn5150_irq_work);

	info->regmap = FUNC8(i2c, &ptn5150_regmap_config);
	if (FUNC1(info->regmap)) {
		ret = FUNC2(info->regmap);
		FUNC3(info->dev, "failed to allocate register map: %d\n",
				   ret);
		return ret;
	}

	if (info->int_gpiod) {
		info->irq = FUNC11(info->int_gpiod);
		if (info->irq < 0) {
			FUNC3(dev, "failed to get INTB IRQ\n");
			return info->irq;
		}

		ret = FUNC9(dev, info->irq, NULL,
						ptn5150_irq_handler,
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
						i2c->name, info);
		if (ret < 0) {
			FUNC3(dev, "failed to request handler for INTB IRQ\n");
			return ret;
		}
	}

	/* Allocate extcon device */
	info->edev = FUNC4(info->dev, ptn5150_extcon_cable);
	if (FUNC1(info->edev)) {
		FUNC3(info->dev, "failed to allocate memory for extcon\n");
		return -ENOMEM;
	}

	/* Register extcon device */
	ret = FUNC5(info->dev, info->edev);
	if (ret) {
		FUNC3(info->dev, "failed to register extcon device\n");
		return ret;
	}

	/* Initialize PTN5150 device and print vendor id and version id */
	ret = FUNC14(info);
	if (ret)
		return -EINVAL;

	return 0;
}