#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rt8973a_muic_info {int num_muic_irqs; int /*<<< orphan*/  wq_detcable; TYPE_1__* dev; int /*<<< orphan*/  edev; int /*<<< orphan*/  irq_data; struct muic_irq* muic_irqs; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  mutex; void* num_reg_data; void* reg_data; struct i2c_client* i2c; } ;
struct muic_irq {int virq; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  DELAY_MS_DEFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct rt8973a_muic_info* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct rt8973a_muic_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct rt8973a_muic_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt8973a_extcon_cable ; 
 int /*<<< orphan*/  FUNC17 (struct rt8973a_muic_info*) ; 
 int /*<<< orphan*/  rt8973a_muic_detect_cable_wq ; 
 int /*<<< orphan*/  rt8973a_muic_irq_chip ; 
 int /*<<< orphan*/  rt8973a_muic_irq_handler ; 
 int /*<<< orphan*/  rt8973a_muic_irq_work ; 
 void* rt8973a_muic_irqs ; 
 int /*<<< orphan*/  rt8973a_muic_regmap_config ; 
 void* rt8973a_reg_data ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC18(struct i2c_client *i2c,
				 const struct i2c_device_id *id)
{
	struct device_node *np = i2c->dev.of_node;
	struct rt8973a_muic_info *info;
	int i, ret, irq_flags;

	if (!np)
		return -EINVAL;

	info = FUNC8(&i2c->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	FUNC11(i2c, info);

	info->dev = &i2c->dev;
	info->i2c = i2c;
	info->irq = i2c->irq;
	info->muic_irqs = rt8973a_muic_irqs;
	info->num_muic_irqs = FUNC0(rt8973a_muic_irqs);
	info->reg_data = rt8973a_reg_data;
	info->num_reg_data = FUNC0(rt8973a_reg_data);

	FUNC13(&info->mutex);

	FUNC2(&info->irq_work, rt8973a_muic_irq_work);

	info->regmap = FUNC9(i2c, &rt8973a_muic_regmap_config);
	if (FUNC3(info->regmap)) {
		ret = FUNC4(info->regmap);
		FUNC5(info->dev, "failed to allocate register map: %d\n",
				   ret);
		return ret;
	}

	/* Support irq domain for RT8973A MUIC device */
	irq_flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT | IRQF_SHARED;
	ret = FUNC15(info->regmap, info->irq, irq_flags, 0,
				  &rt8973a_muic_irq_chip, &info->irq_data);
	if (ret != 0) {
		FUNC5(info->dev, "failed to add irq_chip (irq:%d, err:%d)\n",
				    info->irq, ret);
		return ret;
	}

	for (i = 0; i < info->num_muic_irqs; i++) {
		struct muic_irq *muic_irq = &info->muic_irqs[i];
		int virq = 0;

		virq = FUNC16(info->irq_data, muic_irq->irq);
		if (virq <= 0)
			return -EINVAL;
		muic_irq->virq = virq;

		ret = FUNC10(info->dev, virq, NULL,
						rt8973a_muic_irq_handler,
						IRQF_NO_SUSPEND | IRQF_ONESHOT,
						muic_irq->name, info);
		if (ret) {
			FUNC5(info->dev,
				"failed: irq request (IRQ: %d, error :%d)\n",
				muic_irq->irq, ret);
			return ret;
		}
	}

	/* Allocate extcon device */
	info->edev = FUNC6(info->dev, rt8973a_extcon_cable);
	if (FUNC3(info->edev)) {
		FUNC5(info->dev, "failed to allocate memory for extcon\n");
		return -ENOMEM;
	}

	/* Register extcon device */
	ret = FUNC7(info->dev, info->edev);
	if (ret) {
		FUNC5(info->dev, "failed to register extcon device\n");
		return ret;
	}

	/*
	 * Detect accessory after completing the initialization of platform
	 *
	 * - Use delayed workqueue to detect cable state and then
	 * notify cable state to notifiee/platform through uevent.
	 * After completing the booting of platform, the extcon provider
	 * driver should notify cable state to upper layer.
	 */
	FUNC1(&info->wq_detcable, rt8973a_muic_detect_cable_wq);
	FUNC14(system_power_efficient_wq, &info->wq_detcable,
			FUNC12(DELAY_MS_DEFAULT));

	/* Initialize RT8973A device and print vendor id and version id */
	FUNC17(info);

	return 0;
}