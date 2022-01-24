#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct da9055_hwmon {TYPE_1__* da9055; int /*<<< orphan*/  done; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  hwmon_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  da9055_auxadc_irq ; 
 int /*<<< orphan*/  da9055_groups ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (struct device*,char*,struct da9055_hwmon*,int /*<<< orphan*/ ) ; 
 struct da9055_hwmon* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da9055_hwmon*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*,char*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct da9055_hwmon *hwmon;
	struct device *hwmon_dev;
	int hwmon_irq, ret;

	hwmon = FUNC4(dev, sizeof(struct da9055_hwmon), GFP_KERNEL);
	if (!hwmon)
		return -ENOMEM;

	FUNC7(&hwmon->hwmon_lock);
	FUNC7(&hwmon->irq_lock);

	FUNC6(&hwmon->done);
	hwmon->da9055 = FUNC2(pdev->dev.parent);

	hwmon_irq = FUNC8(pdev, "HWMON");
	if (hwmon_irq < 0)
		return hwmon_irq;

	ret = FUNC5(&pdev->dev, hwmon_irq,
					NULL, da9055_auxadc_irq,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"adc-irq", hwmon);
	if (ret != 0) {
		FUNC1(hwmon->da9055->dev, "DA9055 ADC IRQ failed ret=%d\n",
			ret);
		return ret;
	}

	hwmon_dev = FUNC3(dev, "da9055",
							   hwmon,
							   da9055_groups);
	return FUNC0(hwmon_dev);
}