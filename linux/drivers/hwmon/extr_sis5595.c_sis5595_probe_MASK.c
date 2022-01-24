#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sis5595_data {char* name; scalar_t__ revision; int maxins; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/ * fan_min; int /*<<< orphan*/  addr; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  lock; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_10__ {scalar_t__ revision; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REV2MIN ; 
 int /*<<< orphan*/  SIS5595_EXTENT ; 
 int /*<<< orphan*/  SIS5595_PIN_REG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct sis5595_data* FUNC3 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct sis5595_data*) ; 
 TYPE_3__* s_bridge ; 
 TYPE_2__ sis5595_driver ; 
 int /*<<< orphan*/  sis5595_group ; 
 int /*<<< orphan*/  sis5595_group_in4 ; 
 int /*<<< orphan*/  sis5595_group_temp1 ; 
 int /*<<< orphan*/  FUNC10 (struct sis5595_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct sis5595_data*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	int err = 0;
	int i;
	struct sis5595_data *data;
	struct resource *res;
	char val;

	/* Reserve the ISA region */
	res = FUNC8(pdev, IORESOURCE_IO, 0);
	if (!FUNC4(&pdev->dev, res->start, SIS5595_EXTENT,
				 sis5595_driver.driver.name))
		return -EBUSY;

	data = FUNC3(&pdev->dev, sizeof(struct sis5595_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC6(&data->lock);
	FUNC6(&data->update_lock);
	data->addr = res->start;
	data->name = "sis5595";
	FUNC9(pdev, data);

	/*
	 * Check revision and pin registers to determine whether 4 or 5 voltages
	 */
	data->revision = s_bridge->revision;
	/* 4 voltages, 1 temp */
	data->maxins = 3;
	if (data->revision >= REV2MIN) {
		FUNC7(s_bridge, SIS5595_PIN_REG, &val);
		if (!(val & 0x80))
			/* 5 voltages, no temps */
			data->maxins = 4;
	}

	/* Initialize the SIS5595 chip */
	FUNC10(data);

	/* A few vars need to be filled upon startup */
	for (i = 0; i < 2; i++) {
		data->fan_min[i] = FUNC11(data,
					FUNC2(i));
	}

	/* Register sysfs hooks */
	err = FUNC12(&pdev->dev.kobj, &sis5595_group);
	if (err)
		return err;
	if (data->maxins == 4) {
		err = FUNC12(&pdev->dev.kobj, &sis5595_group_in4);
		if (err)
			goto exit_remove_files;
	} else {
		err = FUNC12(&pdev->dev.kobj, &sis5595_group_temp1);
		if (err)
			goto exit_remove_files;
	}

	data->hwmon_dev = FUNC5(&pdev->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC13(&pdev->dev.kobj, &sis5595_group);
	FUNC13(&pdev->dev.kobj, &sis5595_group_in4);
	FUNC13(&pdev->dev.kobj, &sis5595_group_temp1);
	return err;
}