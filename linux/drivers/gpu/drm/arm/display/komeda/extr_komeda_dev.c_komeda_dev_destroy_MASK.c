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
struct komeda_dev_funcs {int /*<<< orphan*/  (* cleanup ) (struct komeda_dev*) ;int /*<<< orphan*/  (* disconnect_iommu ) (struct komeda_dev*) ;} ;
struct komeda_dev {int n_pipelines; int /*<<< orphan*/ * aclk; int /*<<< orphan*/ * reg_base; int /*<<< orphan*/ ** pipelines; int /*<<< orphan*/ * iommu; struct komeda_dev_funcs* funcs; int /*<<< orphan*/  debugfs_root; struct device* dev; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct komeda_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct komeda_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  komeda_sysfs_attr_group ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct komeda_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct komeda_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC10(struct komeda_dev *mdev)
{
	struct device *dev = mdev->dev;
	const struct komeda_dev_funcs *funcs = mdev->funcs;
	int i;

	FUNC9(&dev->kobj, &komeda_sysfs_attr_group);

#ifdef CONFIG_DEBUG_FS
	debugfs_remove_recursive(mdev->debugfs_root);
#endif

	if (mdev->iommu && mdev->funcs->disconnect_iommu)
		mdev->funcs->disconnect_iommu(mdev);
	mdev->iommu = NULL;

	for (i = 0; i < mdev->n_pipelines; i++) {
		FUNC5(mdev, mdev->pipelines[i]);
		mdev->pipelines[i] = NULL;
	}

	mdev->n_pipelines = 0;

	FUNC6(dev);

	if (funcs && funcs->cleanup)
		funcs->cleanup(mdev);

	if (mdev->reg_base) {
		FUNC3(dev, mdev->reg_base);
		mdev->reg_base = NULL;
	}

	if (mdev->aclk) {
		FUNC0(mdev->aclk);
		FUNC2(dev, mdev->aclk);
		mdev->aclk = NULL;
	}

	FUNC4(dev, mdev);
}