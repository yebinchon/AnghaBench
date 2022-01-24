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
struct vexpress_hwmon_type {int /*<<< orphan*/  attr_groups; int /*<<< orphan*/  name; } ;
struct vexpress_hwmon_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  reg; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {struct vexpress_hwmon_type* data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vexpress_hwmon_data*,int /*<<< orphan*/ ) ; 
 struct vexpress_hwmon_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct vexpress_hwmon_data*) ; 
 int /*<<< orphan*/  vexpress_hwmon_of_match ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct vexpress_hwmon_data *data;
	const struct vexpress_hwmon_type *type;

	data = FUNC4(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;
	FUNC7(pdev, data);

	match = FUNC6(vexpress_hwmon_of_match, &pdev->dev);
	if (!match)
		return -ENODEV;
	type = match->data;

	data->reg = FUNC5(&pdev->dev);
	if (FUNC0(data->reg))
		return FUNC1(data->reg);

	data->hwmon_dev = FUNC3(&pdev->dev,
			type->name, data, type->attr_groups);

	return FUNC2(data->hwmon_dev);
}