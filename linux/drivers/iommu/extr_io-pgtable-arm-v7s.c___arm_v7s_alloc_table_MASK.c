#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct io_pgtable_cfg {int /*<<< orphan*/  coherent_walk; struct device* iommu_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct io_pgtable_cfg cfg; } ;
struct arm_v7s_io_pgtable {int /*<<< orphan*/  l2_tables; TYPE_1__ iop; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ dma_addr_t ;
typedef  scalar_t__ arm_v7s_iopte ;

/* Variables and functions */
 int ARM_V7S_TABLE_GFP_DMA ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 scalar_t__ FUNC3 (struct device*,void*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 scalar_t__ FUNC11 (void*) ; 

__attribute__((used)) static void *FUNC12(int lvl, gfp_t gfp,
				   struct arm_v7s_io_pgtable *data)
{
	struct io_pgtable_cfg *cfg = &data->iop.cfg;
	struct device *dev = cfg->iommu_dev;
	phys_addr_t phys;
	dma_addr_t dma;
	size_t size = FUNC0(lvl);
	void *table = NULL;

	if (lvl == 1)
		table = (void *)FUNC1(
			__GFP_ZERO | ARM_V7S_TABLE_GFP_DMA, FUNC7(size));
	else if (lvl == 2)
		table = FUNC9(data->l2_tables, gfp);
	phys = FUNC11(table);
	if (phys != (arm_v7s_iopte)phys) {
		/* Doesn't fit in PTE */
		FUNC2(dev, "Page table does not fit in PTE: %pa", &phys);
		goto out_free;
	}
	if (table && !cfg->coherent_walk) {
		dma = FUNC3(dev, table, size, DMA_TO_DEVICE);
		if (FUNC4(dev, dma))
			goto out_free;
		/*
		 * We depend on the IOMMU being able to work with any physical
		 * address directly, so if the DMA layer suggests otherwise by
		 * translating or truncating them, that bodes very badly...
		 */
		if (dma != phys)
			goto out_unmap;
	}
	if (lvl == 2)
		FUNC10(table);
	return table;

out_unmap:
	FUNC2(dev, "Cannot accommodate DMA translation for IOMMU page tables\n");
	FUNC5(dev, dma, size, DMA_TO_DEVICE);
out_free:
	if (lvl == 1)
		FUNC6((unsigned long)table, FUNC7(size));
	else
		FUNC8(data->l2_tables, table);
	return NULL;
}