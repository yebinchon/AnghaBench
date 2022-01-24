#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct max197_platform_data {int /*<<< orphan*/ * convert; } ;
struct max197_data {int scale; int /*<<< orphan*/  hwmon_dev; scalar_t__* ctrl_bytes; int /*<<< orphan*/  limit; int /*<<< orphan*/  lock; struct max197_platform_data* pdata; } ;
typedef  enum max197_chips { ____Placeholder_max197_chips } max197_chips ;
struct TYPE_6__ {int driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX197_LIMIT ; 
 int MAX197_NUM_CH ; 
 int /*<<< orphan*/  MAX199_LIMIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct max197_platform_data* FUNC3 (TYPE_2__*) ; 
 struct max197_data* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int max197 ; 
 int /*<<< orphan*/  max197_sysfs_group ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct max197_data*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int ch, ret;
	struct max197_data *data;
	struct max197_platform_data *pdata = FUNC3(&pdev->dev);
	enum max197_chips chip = FUNC7(pdev)->driver_data;

	if (pdata == NULL) {
		FUNC2(&pdev->dev, "no platform data supplied\n");
		return -EINVAL;
	}

	if (pdata->convert == NULL) {
		FUNC2(&pdev->dev, "no convert function supplied\n");
		return -EINVAL;
	}

	data = FUNC4(&pdev->dev, sizeof(struct max197_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->pdata = pdata;
	FUNC6(&data->lock);

	if (chip == max197) {
		data->limit = MAX197_LIMIT;
		data->scale = true;
	} else {
		data->limit = MAX199_LIMIT;
		data->scale = false;
	}

	for (ch = 0; ch < MAX197_NUM_CH; ch++)
		data->ctrl_bytes[ch] = (u8) ch;

	FUNC8(pdev, data);

	ret = FUNC9(&pdev->dev.kobj, &max197_sysfs_group);
	if (ret) {
		FUNC2(&pdev->dev, "sysfs create group failed\n");
		return ret;
	}

	data->hwmon_dev = FUNC5(&pdev->dev);
	if (FUNC0(data->hwmon_dev)) {
		ret = FUNC1(data->hwmon_dev);
		FUNC2(&pdev->dev, "hwmon device register failed\n");
		goto error;
	}

	return 0;

error:
	FUNC10(&pdev->dev.kobj, &max197_sysfs_group);
	return ret;
}