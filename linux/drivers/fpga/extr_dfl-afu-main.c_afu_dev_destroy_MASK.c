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
struct dfl_afu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dfl_feature_platform_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct dfl_feature_platform_data*) ; 
 struct dfl_feature_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 struct dfl_afu* FUNC3 (struct dfl_feature_platform_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dfl_feature_platform_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct dfl_feature_platform_data *pdata = FUNC2(&pdev->dev);
	struct dfl_afu *afu;

	FUNC5(&pdata->lock);
	afu = FUNC3(pdata);
	FUNC1(pdata);
	FUNC0(pdata);
	FUNC4(pdata, NULL);
	FUNC6(&pdata->lock);

	return 0;
}