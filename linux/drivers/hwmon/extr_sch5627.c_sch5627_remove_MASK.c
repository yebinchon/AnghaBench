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
struct sch5627_data {scalar_t__ hwmon_dev; scalar_t__ watchdog; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct sch5627_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  sch5627_group ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct sch5627_data *data = FUNC1(pdev);

	if (data->watchdog)
		FUNC2(data->watchdog);

	if (data->hwmon_dev)
		FUNC0(data->hwmon_dev);

	FUNC3(&pdev->dev.kobj, &sch5627_group);

	return 0;
}