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
struct dfl_fme {struct dfl_feature_platform_data* pdata; } ;
struct dfl_feature_platform_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dfl_feature_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 struct dfl_fme* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dfl_feature_platform_data*,struct dfl_fme*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct dfl_feature_platform_data *pdata = FUNC0(&pdev->dev);
	struct dfl_fme *fme;

	fme = FUNC1(&pdev->dev, sizeof(*fme), GFP_KERNEL);
	if (!fme)
		return -ENOMEM;

	fme->pdata = pdata;

	FUNC3(&pdata->lock);
	FUNC2(pdata, fme);
	FUNC4(&pdata->lock);

	return 0;
}