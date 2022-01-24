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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct f71805f_data {int /*<<< orphan*/  hwmon_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  f71805f_group ; 
 int /*<<< orphan*/ * f71805f_group_optin ; 
 int /*<<< orphan*/  f71805f_group_pwm_freq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct f71805f_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct f71805f_data *data = FUNC1(pdev);
	int i;

	FUNC0(data->hwmon_dev);
	FUNC2(&pdev->dev.kobj, &f71805f_group);
	for (i = 0; i < 4; i++)
		FUNC2(&pdev->dev.kobj, &f71805f_group_optin[i]);
	FUNC2(&pdev->dev.kobj, &f71805f_group_pwm_freq);

	return 0;
}