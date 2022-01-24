#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct komeda_product_data {int /*<<< orphan*/  product_id; TYPE_1__* (* identify ) (int /*<<< orphan*/ *,TYPE_2__*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  core_id; } ;
struct komeda_dev {int /*<<< orphan*/ * iommu; TYPE_1__* funcs; struct device* dev; int /*<<< orphan*/  dma_parms; TYPE_2__ chip; int /*<<< orphan*/ * reg_base; int /*<<< orphan*/ * aclk; int /*<<< orphan*/  lock; } ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/ * dma_parms; } ;
struct TYPE_3__ {int (* enum_resources ) (struct komeda_dev*) ;int (* connect_iommu ) (struct komeda_dev*) ;int /*<<< orphan*/  (* init_format_table ) (struct komeda_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct komeda_dev* FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (struct device*,struct resource*) ; 
 struct komeda_dev* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (struct device*) ; 
 int FUNC15 (struct komeda_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct komeda_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct komeda_dev*) ; 
 int FUNC18 (struct device*,struct komeda_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct komeda_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  komeda_sysfs_attr_group ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 struct komeda_product_data* FUNC21 (struct device*) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC23 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (struct komeda_dev*) ; 
 int FUNC25 (struct komeda_dev*) ; 
 int FUNC26 (struct komeda_dev*) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC28 (struct device*) ; 

struct komeda_dev *FUNC29(struct device *dev)
{
	struct platform_device *pdev = FUNC28(dev);
	const struct komeda_product_data *product;
	struct komeda_dev *mdev;
	struct resource *io_res;
	int err = 0;

	product = FUNC21(dev);
	if (!product)
		return FUNC3(-ENODEV);

	io_res = FUNC22(pdev, IORESOURCE_MEM, 0);
	if (!io_res) {
		FUNC1("No registers defined.\n");
		return FUNC3(-ENODEV);
	}

	mdev = FUNC12(dev, sizeof(*mdev), GFP_KERNEL);
	if (!mdev)
		return FUNC3(-ENOMEM);

	FUNC20(&mdev->lock);

	mdev->dev = dev;
	mdev->reg_base = FUNC11(dev, io_res);
	if (FUNC4(mdev->reg_base)) {
		FUNC1("Map register space failed.\n");
		err = FUNC8(mdev->reg_base);
		mdev->reg_base = NULL;
		goto err_cleanup;
	}

	mdev->aclk = FUNC10(dev, "aclk");
	if (FUNC4(mdev->aclk)) {
		FUNC1("Get engine clk failed.\n");
		err = FUNC8(mdev->aclk);
		mdev->aclk = NULL;
		goto err_cleanup;
	}

	FUNC9(mdev->aclk);

	mdev->funcs = product->identify(mdev->reg_base, &mdev->chip);
	if (!FUNC19(mdev, product->product_id)) {
		FUNC1("DT configured %x mismatch with real HW %x.\n",
			  product->product_id,
			  FUNC7(mdev->chip.core_id));
		err = -ENODEV;
		goto err_cleanup;
	}

	FUNC2("Found ARM Mali-D%x version r%dp%d\n",
		 FUNC7(mdev->chip.core_id),
		 FUNC5(mdev->chip.core_id),
		 FUNC6(mdev->chip.core_id));

	mdev->funcs->init_format_table(mdev);

	err = mdev->funcs->enum_resources(mdev);
	if (err) {
		FUNC1("enumerate display resource failed.\n");
		goto err_cleanup;
	}

	err = FUNC18(dev, mdev);
	if (err) {
		FUNC1("parse device tree failed.\n");
		goto err_cleanup;
	}

	err = FUNC15(mdev);
	if (err) {
		FUNC1("assemble display pipelines failed.\n");
		goto err_cleanup;
	}

	dev->dma_parms = &mdev->dma_parms;
	FUNC13(dev, FUNC0(32));

	mdev->iommu = FUNC14(mdev->dev);
	if (!mdev->iommu)
		FUNC2("continue without IOMMU support!\n");

	if (mdev->iommu && mdev->funcs->connect_iommu) {
		err = mdev->funcs->connect_iommu(mdev);
		if (err) {
			mdev->iommu = NULL;
			goto err_cleanup;
		}
	}

	err = FUNC27(&dev->kobj, &komeda_sysfs_attr_group);
	if (err) {
		FUNC1("create sysfs group failed.\n");
		goto err_cleanup;
	}

#ifdef CONFIG_DEBUG_FS
	komeda_debugfs_init(mdev);
#endif

	return mdev;

err_cleanup:
	FUNC17(mdev);
	return FUNC3(err);
}