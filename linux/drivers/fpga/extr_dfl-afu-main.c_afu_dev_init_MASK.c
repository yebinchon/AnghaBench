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
struct dfl_afu {struct dfl_feature_platform_data* pdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dfl_feature_platform_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct dfl_feature_platform_data*) ; 
 struct dfl_feature_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 struct dfl_afu* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dfl_feature_platform_data*,struct dfl_afu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct dfl_feature_platform_data *pdata = FUNC2(&pdev->dev);
	struct dfl_afu *afu;

	afu = FUNC3(&pdev->dev, sizeof(*afu), GFP_KERNEL);
	if (!afu)
		return -ENOMEM;

	afu->pdata = pdata;

	FUNC5(&pdata->lock);
	FUNC4(pdata, afu);
	FUNC1(pdata);
	FUNC0(pdata);
	FUNC6(&pdata->lock);

	return 0;
}