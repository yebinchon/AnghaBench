#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {TYPE_2__* of_node; } ;
struct platform_device {struct device dev; } ;
struct mtk_iommu_data {int enable_4GB; scalar_t__ irq; int /*<<< orphan*/  list; int /*<<< orphan*/  iommu; TYPE_1__* larb_imu; int /*<<< orphan*/  bclk; TYPE_3__* plat_data; int /*<<< orphan*/  base; int /*<<< orphan*/  protect_base; struct device* dev; } ;
struct device_node {int dummy; } ;
struct component_match {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_7__ {scalar_t__ has_bclk; int /*<<< orphan*/  has_4gb_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  fwnode; } ;
struct TYPE_5__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MTK_PROTECT_PA_ALIGN ; 
 int PAGE_SHIFT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compare_of ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *,struct component_match*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct component_match**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct resource*) ; 
 void* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  m4ulist ; 
 int max_pfn ; 
 int /*<<< orphan*/  mtk_iommu_com_ops ; 
 int FUNC16 (struct mtk_iommu_data*) ; 
 int /*<<< orphan*/  mtk_iommu_ops ; 
 int FUNC17 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device_node*) ; 
 struct platform_device* FUNC20 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC21 (struct device_node*) ; 
 struct device_node* FUNC22 (TYPE_2__*,char*,int) ; 
 int FUNC23 (struct device_node*,char*,size_t*) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 scalar_t__ FUNC24 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct mtk_iommu_data*) ; 
 int /*<<< orphan*/  release_of ; 
 int /*<<< orphan*/  FUNC27 (void*) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct mtk_iommu_data   *data;
	struct device           *dev = &pdev->dev;
	struct resource         *res;
	resource_size_t		ioaddr;
	struct component_match  *match = NULL;
	void                    *protect;
	int                     i, larb_nr, ret;

	data = FUNC9(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;
	data->dev = dev;
	data->plat_data = FUNC18(dev);

	/* Protect memory. HW will access here while translation fault.*/
	protect = FUNC9(dev, MTK_PROTECT_PA_ALIGN * 2, GFP_KERNEL);
	if (!protect)
		return -ENOMEM;
	data->protect_base = FUNC0(FUNC27(protect), MTK_PROTECT_PA_ALIGN);

	/* Whether the current dram is over 4GB */
	data->enable_4GB = !!(max_pfn > (FUNC1(32) >> PAGE_SHIFT));
	if (!data->plat_data->has_4gb_mode)
		data->enable_4GB = false;

	res = FUNC25(pdev, IORESOURCE_MEM, 0);
	data->base = FUNC8(dev, res);
	if (FUNC2(data->base))
		return FUNC3(data->base);
	ioaddr = res->start;

	data->irq = FUNC24(pdev, 0);
	if (data->irq < 0)
		return data->irq;

	if (data->plat_data->has_bclk) {
		data->bclk = FUNC7(dev, "bclk");
		if (FUNC2(data->bclk))
			return FUNC3(data->bclk);
	}

	larb_nr = FUNC17(dev->of_node,
					     "mediatek,larbs", NULL);
	if (larb_nr < 0)
		return larb_nr;

	for (i = 0; i < larb_nr; i++) {
		struct device_node *larbnode;
		struct platform_device *plarbdev;
		u32 id;

		larbnode = FUNC22(dev->of_node, "mediatek,larbs", i);
		if (!larbnode)
			return -EINVAL;

		if (!FUNC19(larbnode)) {
			FUNC21(larbnode);
			continue;
		}

		ret = FUNC23(larbnode, "mediatek,larb-id", &id);
		if (ret)/* The id is consecutive if there is no this property */
			id = i;

		plarbdev = FUNC20(larbnode);
		if (!plarbdev) {
			FUNC21(larbnode);
			return -EPROBE_DEFER;
		}
		data->larb_imu[id].dev = &plarbdev->dev;

		FUNC6(dev, &match, release_of,
					    compare_of, larbnode);
	}

	FUNC26(pdev, data);

	ret = FUNC16(data);
	if (ret)
		return ret;

	ret = FUNC13(&data->iommu, dev, NULL,
				     "mtk-iommu.%pa", &ioaddr);
	if (ret)
		return ret;

	FUNC12(&data->iommu, &mtk_iommu_ops);
	FUNC11(&data->iommu, &pdev->dev.of_node->fwnode);

	ret = FUNC10(&data->iommu);
	if (ret)
		return ret;

	FUNC15(&data->list, &m4ulist);

	if (!FUNC14(&platform_bus_type))
		FUNC4(&platform_bus_type, &mtk_iommu_ops);

	return FUNC5(dev, &mtk_iommu_com_ops, match);
}