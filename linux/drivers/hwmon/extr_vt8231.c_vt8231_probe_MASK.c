#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vt8231_data {char* name; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  uch_config; int /*<<< orphan*/  update_lock; scalar_t__ addr; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT8231_EXTENT ; 
 int /*<<< orphan*/  VT8231_REG_UCH_CONFIG ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,unsigned long,unsigned long) ; 
 struct vt8231_data* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct vt8231_data*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__ vt8231_driver ; 
 int /*<<< orphan*/  vt8231_group ; 
 int /*<<< orphan*/ * vt8231_group_temps ; 
 int /*<<< orphan*/ * vt8231_group_volts ; 
 int /*<<< orphan*/  FUNC14 (struct vt8231_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct vt8231_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct resource *res;
	struct vt8231_data *data;
	int err = 0, i;

	/* Reserve the ISA region */
	res = FUNC10(pdev, IORESOURCE_IO, 0);
	if (!FUNC7(&pdev->dev, res->start, VT8231_EXTENT,
				 vt8231_driver.driver.name)) {
		FUNC5(&pdev->dev, "Region 0x%lx-0x%lx already in use!\n",
			(unsigned long)res->start, (unsigned long)res->end);
		return -ENODEV;
	}

	data = FUNC6(&pdev->dev, sizeof(struct vt8231_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC11(pdev, data);
	data->addr = res->start;
	data->name = "vt8231";

	FUNC9(&data->update_lock);
	FUNC14(data);

	/* Register sysfs hooks */
	err = FUNC12(&pdev->dev.kobj, &vt8231_group);
	if (err)
		return err;

	/* Must update device information to find out the config field */
	data->uch_config = FUNC15(data, VT8231_REG_UCH_CONFIG);

	for (i = 0; i < FUNC0(vt8231_group_temps); i++) {
		if (FUNC1(i, data->uch_config)) {
			err = FUNC12(&pdev->dev.kobj,
						 &vt8231_group_temps[i]);
			if (err)
				goto exit_remove_files;
		}
	}

	for (i = 0; i < FUNC0(vt8231_group_volts); i++) {
		if (FUNC2(i, data->uch_config)) {
			err = FUNC12(&pdev->dev.kobj,
						 &vt8231_group_volts[i]);
			if (err)
				goto exit_remove_files;
		}
	}

	data->hwmon_dev = FUNC8(&pdev->dev);
	if (FUNC3(data->hwmon_dev)) {
		err = FUNC4(data->hwmon_dev);
		goto exit_remove_files;
	}
	return 0;

exit_remove_files:
	for (i = 0; i < FUNC0(vt8231_group_volts); i++)
		FUNC13(&pdev->dev.kobj, &vt8231_group_volts[i]);

	for (i = 0; i < FUNC0(vt8231_group_temps); i++)
		FUNC13(&pdev->dev.kobj, &vt8231_group_temps[i]);

	FUNC13(&pdev->dev.kobj, &vt8231_group);
	return err;
}