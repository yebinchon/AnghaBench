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
struct dfl_fme {int dummy; } ;
struct dfl_feature_platform_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct dfl_feature_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 struct dfl_fme* FUNC1 (struct dfl_feature_platform_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct dfl_feature_platform_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev)
{
	struct dfl_feature_platform_data *pdata = FUNC0(&pdev->dev);
	struct dfl_fme *fme;

	FUNC3(&pdata->lock);
	fme = FUNC1(pdata);
	FUNC2(pdata, NULL);
	FUNC4(&pdata->lock);
}