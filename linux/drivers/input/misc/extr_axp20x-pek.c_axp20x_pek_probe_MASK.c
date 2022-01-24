#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct axp20x_pek {struct axp20x_info* info; int /*<<< orphan*/  axp20x; } ;
struct axp20x_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct axp20x_pek*,struct platform_device*) ; 
 scalar_t__ FUNC1 (struct axp20x_pek*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct axp20x_pek* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct platform_device_id* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct axp20x_pek*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct axp20x_pek *axp20x_pek;
	const struct platform_device_id *match = FUNC5(pdev);
	int error;

	if (!match) {
		FUNC2(&pdev->dev, "Failed to get platform_device_id\n");
		return -EINVAL;
	}

	axp20x_pek = FUNC4(&pdev->dev, sizeof(struct axp20x_pek),
				  GFP_KERNEL);
	if (!axp20x_pek)
		return -ENOMEM;

	axp20x_pek->axp20x = FUNC3(pdev->dev.parent);

	if (FUNC1(axp20x_pek, pdev)) {
		error = FUNC0(axp20x_pek, pdev);
		if (error)
			return error;
	}

	axp20x_pek->info = (struct axp20x_info *)match->driver_data;

	FUNC6(pdev, axp20x_pek);

	return 0;
}