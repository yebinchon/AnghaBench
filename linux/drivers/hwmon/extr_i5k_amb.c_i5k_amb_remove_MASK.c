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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_attr; } ;
struct i5k_amb_data {int num_attrs; int /*<<< orphan*/  amb_len; int /*<<< orphan*/  amb_base; int /*<<< orphan*/  amb_mmio; struct i5k_amb_data* attrs; TYPE_1__ s_attr; int /*<<< orphan*/  hwmon_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i5k_amb_data*) ; 
 struct i5k_amb_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int i;
	struct i5k_amb_data *data = FUNC4(pdev);

	FUNC1(data->hwmon_dev);
	FUNC0(&pdev->dev, &dev_attr_name);
	for (i = 0; i < data->num_attrs; i++)
		FUNC0(&pdev->dev, &data->attrs[i].s_attr.dev_attr);
	FUNC3(data->attrs);
	FUNC2(data->amb_mmio);
	FUNC5(data->amb_base, data->amb_len);
	FUNC3(data);
	return 0;
}