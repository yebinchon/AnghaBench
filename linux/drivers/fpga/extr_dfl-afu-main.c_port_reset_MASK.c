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
struct dfl_feature_platform_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct platform_device*) ; 
 struct dfl_feature_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct dfl_feature_platform_data *pdata = FUNC1(&pdev->dev);
	int ret;

	FUNC2(&pdata->lock);
	ret = FUNC0(pdev);
	FUNC3(&pdata->lock);

	return ret;
}