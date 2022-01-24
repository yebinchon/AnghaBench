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
struct sis5595_data {int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sis5595_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  sis5595_group ; 
 int /*<<< orphan*/  sis5595_group_in4 ; 
 int /*<<< orphan*/  sis5595_group_temp1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct sis5595_data *data = FUNC1(pdev);

	FUNC0(data->hwmon_dev);
	FUNC2(&pdev->dev.kobj, &sis5595_group);
	FUNC2(&pdev->dev.kobj, &sis5595_group_in4);
	FUNC2(&pdev->dev.kobj, &sis5595_group_temp1);

	return 0;
}