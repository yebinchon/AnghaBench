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
struct via686a_data {char* name; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; scalar_t__ addr; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIA686A_EXTENT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,unsigned long,unsigned long) ; 
 struct via686a_data* FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct via686a_data*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__ via686a_driver ; 
 int /*<<< orphan*/  via686a_group ; 
 int /*<<< orphan*/  FUNC11 (struct via686a_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct via686a_data *data;
	struct resource *res;
	int err;

	/* Reserve the ISA region */
	res = FUNC7(pdev, IORESOURCE_IO, 0);
	if (!FUNC4(&pdev->dev, res->start, VIA686A_EXTENT,
				 via686a_driver.driver.name)) {
		FUNC2(&pdev->dev, "Region 0x%lx-0x%lx already in use!\n",
			(unsigned long)res->start, (unsigned long)res->end);
		return -ENODEV;
	}

	data = FUNC3(&pdev->dev, sizeof(struct via686a_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC8(pdev, data);
	data->addr = res->start;
	data->name = "via686a";
	FUNC6(&data->update_lock);

	/* Initialize the VIA686A chip */
	FUNC11(data);

	/* Register sysfs hooks */
	err = FUNC9(&pdev->dev.kobj, &via686a_group);
	if (err)
		return err;

	data->hwmon_dev = FUNC5(&pdev->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC10(&pdev->dev.kobj, &via686a_group);
	return err;
}