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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_mc {scalar_t__ regs; } ;
struct resource {scalar_t__ end; int /*<<< orphan*/  start; } ;
struct gart_device {int /*<<< orphan*/  iommu; int /*<<< orphan*/  savedata; int /*<<< orphan*/  dom_lock; int /*<<< orphan*/  pte_lock; scalar_t__ iovmm_end; int /*<<< orphan*/  iovmm_base; scalar_t__ regs; struct device* dev; } ;
struct device {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct gart_device* FUNC1 (int) ; 
 scalar_t__ GART_PAGE_SHIFT ; 
 int GART_PAGE_SIZE ; 
 scalar_t__ GART_REG_BASE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct gart_device*,int /*<<< orphan*/ *) ; 
 struct gart_device* gart_handle ; 
 int /*<<< orphan*/  gart_iommu_ops ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gart_device*) ; 
 struct gart_device* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

struct gart_device *FUNC17(struct device *dev, struct tegra_mc *mc)
{
	struct gart_device *gart;
	struct resource *res;
	int err;

	FUNC0(PAGE_SHIFT != GART_PAGE_SHIFT);

	/* the GART memory aperture is required */
	res = FUNC12(FUNC15(dev), IORESOURCE_MEM, 1);
	if (!res) {
		FUNC2(dev, "Memory aperture resource unavailable\n");
		return FUNC1(-ENXIO);
	}

	gart = FUNC11(sizeof(*gart), GFP_KERNEL);
	if (!gart)
		return FUNC1(-ENOMEM);

	gart_handle = gart;

	gart->dev = dev;
	gart->regs = mc->regs + GART_REG_BASE;
	gart->iovmm_base = res->start;
	gart->iovmm_end = res->end + 1;
	FUNC14(&gart->pte_lock);
	FUNC14(&gart->dom_lock);

	FUNC3(gart, NULL);

	err = FUNC7(&gart->iommu, dev, NULL, "gart");
	if (err)
		goto free_gart;

	FUNC6(&gart->iommu, &gart_iommu_ops);
	FUNC5(&gart->iommu, dev->fwnode);

	err = FUNC4(&gart->iommu);
	if (err)
		goto remove_sysfs;

	gart->savedata = FUNC16(FUNC13(res) / GART_PAGE_SIZE *
				 sizeof(u32));
	if (!gart->savedata) {
		err = -ENOMEM;
		goto unregister_iommu;
	}

	return gart;

unregister_iommu:
	FUNC9(&gart->iommu);
remove_sysfs:
	FUNC8(&gart->iommu);
free_gart:
	FUNC10(gart);

	return FUNC1(err);
}