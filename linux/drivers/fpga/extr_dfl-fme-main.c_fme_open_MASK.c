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
struct file {struct dfl_feature_platform_data* private_data; } ;
struct dfl_feature_platform_data {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct dfl_feature_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dfl_feature_platform_data*) ; 
 struct platform_device* FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct platform_device *fdev = FUNC4(inode);
	struct dfl_feature_platform_data *pdata = FUNC2(&fdev->dev);
	int ret;

	if (FUNC0(!pdata))
		return -ENODEV;

	ret = FUNC3(pdata);
	if (ret)
		return ret;

	FUNC1(&fdev->dev, "Device File Open\n");
	filp->private_data = pdata;

	return 0;
}