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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ktd2692_context {int /*<<< orphan*/  lock; scalar_t__ regulator; int /*<<< orphan*/  fled_cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ktd2692_context* FUNC3 (struct platform_device*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct ktd2692_context *led = FUNC3(pdev);
	int ret;

	FUNC1(&led->fled_cdev);

	if (led->regulator) {
		ret = FUNC4(led->regulator);
		if (ret)
			FUNC0(&pdev->dev,
				"Failed to disable supply: %d\n", ret);
	}

	FUNC2(&led->lock);

	return 0;
}