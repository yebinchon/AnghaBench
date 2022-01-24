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
struct via_cputemp_data {scalar_t__ vrm; int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_cpu0_vid ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct via_cputemp_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  via_cputemp_group ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct via_cputemp_data *data = FUNC2(pdev);

	FUNC1(data->hwmon_dev);
	if (data->vrm)
		FUNC0(&pdev->dev, &dev_attr_cpu0_vid);
	FUNC3(&pdev->dev.kobj, &via_cputemp_group);
	return 0;
}