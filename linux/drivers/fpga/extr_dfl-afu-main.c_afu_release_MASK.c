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
struct inode {int dummy; } ;
struct file {struct platform_device* private_data; } ;
struct dfl_feature_platform_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dfl_feature_platform_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct dfl_feature_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dfl_feature_platform_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct platform_device *pdev = filp->private_data;
	struct dfl_feature_platform_data *pdata;

	FUNC2(&pdev->dev, "Device File Release\n");

	pdata = FUNC3(&pdev->dev);

	FUNC5(&pdata->lock);
	FUNC0(pdev);
	FUNC1(pdata);
	FUNC6(&pdata->lock);

	FUNC4(pdata);

	return 0;
}