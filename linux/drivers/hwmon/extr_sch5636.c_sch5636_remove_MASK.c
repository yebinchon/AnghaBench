#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sch5636_data {scalar_t__ hwmon_dev; scalar_t__ watchdog; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int SCH5636_NO_FANS ; 
 int SCH5636_NO_TEMPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct sch5636_data* FUNC3 (struct platform_device*) ; 
 TYPE_3__* sch5636_attr ; 
 TYPE_2__* sch5636_fan_attr ; 
 TYPE_1__* sch5636_temp_attr ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct sch5636_data *data = FUNC3(pdev);
	int i;

	if (data->watchdog)
		FUNC4(data->watchdog);

	if (data->hwmon_dev)
		FUNC2(data->hwmon_dev);

	for (i = 0; i < FUNC0(sch5636_attr); i++)
		FUNC1(&pdev->dev, &sch5636_attr[i].dev_attr);

	for (i = 0; i < SCH5636_NO_TEMPS * 3; i++)
		FUNC1(&pdev->dev,
				   &sch5636_temp_attr[i].dev_attr);

	for (i = 0; i < SCH5636_NO_FANS * 3; i++)
		FUNC1(&pdev->dev,
				   &sch5636_fan_attr[i].dev_attr);

	return 0;
}