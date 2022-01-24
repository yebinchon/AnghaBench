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
struct platform_device {int dummy; } ;
struct of_phandle_args {int args_count; int /*<<< orphan*/  args; TYPE_2__* np; } ;
struct mtk_iommu_data {struct device* dev; } ;
struct iommu_fwspec {struct mtk_iommu_data* iommu_priv; int /*<<< orphan*/ * ops; } ;
struct dma_iommu_mapping {int dummy; } ;
struct TYPE_3__ {struct dma_iommu_mapping* iommu; } ;
struct device {TYPE_1__ archdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dma_iommu_mapping*) ; 
 int FUNC1 (struct dma_iommu_mapping*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct dma_iommu_mapping* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct iommu_fwspec* FUNC5 (struct device*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_iommu_ops ; 
 struct platform_device* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 struct mtk_iommu_data* FUNC9 (struct platform_device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev,
				    struct of_phandle_args *args)
{
	struct iommu_fwspec *fwspec = FUNC5(dev);
	struct mtk_iommu_data *data;
	struct platform_device *m4updev;
	struct dma_iommu_mapping *mtk_mapping;
	struct device *m4udev;
	int ret;

	if (args->args_count != 1) {
		FUNC4(dev, "invalid #iommu-cells(%d) property for IOMMU\n",
			args->args_count);
		return -EINVAL;
	}

	if (!fwspec) {
		ret = FUNC7(dev, &args->np->fwnode, &mtk_iommu_ops);
		if (ret)
			return ret;
		fwspec = FUNC5(dev);
	} else if (FUNC5(dev)->ops != &mtk_iommu_ops) {
		return -EINVAL;
	}

	if (!fwspec->iommu_priv) {
		/* Get the m4u device */
		m4updev = FUNC8(args->np);
		if (FUNC2(!m4updev))
			return -EINVAL;

		fwspec->iommu_priv = FUNC9(m4updev);
	}

	ret = FUNC6(dev, args->args, 1);
	if (ret)
		return ret;

	data = fwspec->iommu_priv;
	m4udev = data->dev;
	mtk_mapping = m4udev->archdata.iommu;
	if (!mtk_mapping) {
		/* MTK iommu support 4GB iova address space. */
		mtk_mapping = FUNC3(&platform_bus_type,
						0, 1ULL << 32);
		if (FUNC0(mtk_mapping))
			return FUNC1(mtk_mapping);

		m4udev->archdata.iommu = mtk_mapping;
	}

	return 0;
}