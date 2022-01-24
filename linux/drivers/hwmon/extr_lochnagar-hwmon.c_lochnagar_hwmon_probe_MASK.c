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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct lochnagar_hwmon {int* power_nsamples; int /*<<< orphan*/  regmap; int /*<<< orphan*/  sensor_lock; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (struct device*,char*,struct lochnagar_hwmon*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lochnagar_hwmon* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lochnagar_chip_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device *hwmon_dev;
	struct lochnagar_hwmon *priv;
	int i;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC6(&priv->sensor_lock);

	priv->regmap = FUNC3(dev->parent, NULL);
	if (!priv->regmap) {
		FUNC2(dev, "No register map found\n");
		return -EINVAL;
	}

	for (i = 0; i < FUNC0(priv->power_nsamples); i++)
		priv->power_nsamples[i] = 96;

	hwmon_dev = FUNC4(dev, "Lochnagar", priv,
							 &lochnagar_chip_info,
							 NULL);

	return FUNC1(hwmon_dev);
}