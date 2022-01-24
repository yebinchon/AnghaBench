#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct abituguru3_data {TYPE_2__* sysfs_attr; int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_6__ {scalar_t__ name; } ;
struct TYPE_8__ {TYPE_1__ attr; } ;
struct TYPE_9__ {TYPE_3__ dev_attr; } ;
struct TYPE_7__ {TYPE_3__ dev_attr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 TYPE_4__* abituguru3_sysfs_attr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct abituguru3_data* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int i;
	struct abituguru3_data *data = FUNC3(pdev);

	FUNC2(data->hwmon_dev);
	for (i = 0; data->sysfs_attr[i].dev_attr.attr.name; i++)
		FUNC1(&pdev->dev, &data->sysfs_attr[i].dev_attr);
	for (i = 0; i < FUNC0(abituguru3_sysfs_attr); i++)
		FUNC1(&pdev->dev,
			&abituguru3_sysfs_attr[i].dev_attr);
	return 0;
}