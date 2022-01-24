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
struct page {int dummy; } ;
struct ir_table {unsigned long* bitmap; int /*<<< orphan*/  base; } ;
struct intel_iommu {struct ir_table* ir_table; int /*<<< orphan*/  name; int /*<<< orphan*/  qi; int /*<<< orphan*/  seq_id; int /*<<< orphan*/  ir_domain; int /*<<< orphan*/  ir_msi_domain; int /*<<< orphan*/  node; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  INTR_REMAP_PAGE_ORDER ; 
 int /*<<< orphan*/  INTR_REMAP_TABLE_ENTRIES ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 unsigned long* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_iommu*) ; 
 scalar_t__ FUNC8 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct intel_iommu*) ; 
 int /*<<< orphan*/  eim_mode ; 
 int /*<<< orphan*/  FUNC10 (struct intel_iommu*) ; 
 int /*<<< orphan*/  intel_ir_domain_ops ; 
 int /*<<< orphan*/  FUNC11 (struct intel_iommu*) ; 
 scalar_t__ FUNC12 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_iommu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct intel_iommu*) ; 
 struct fwnode_handle* FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fwnode_handle*,int /*<<< orphan*/ *,struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC17 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct ir_table*) ; 
 struct ir_table* FUNC20 (int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct intel_iommu *iommu)
{
	struct ir_table *ir_table;
	struct fwnode_handle *fn;
	unsigned long *bitmap;
	struct page *pages;

	if (iommu->ir_table)
		return 0;

	ir_table = FUNC20(sizeof(struct ir_table), GFP_KERNEL);
	if (!ir_table)
		return -ENOMEM;

	pages = FUNC1(iommu->node, GFP_KERNEL | __GFP_ZERO,
				 INTR_REMAP_PAGE_ORDER);
	if (!pages) {
		FUNC22("IR%d: failed to allocate pages of order %d\n",
		       iommu->seq_id, INTR_REMAP_PAGE_ORDER);
		goto out_free_table;
	}

	bitmap = FUNC5(INTR_REMAP_TABLE_ENTRIES, GFP_ATOMIC);
	if (bitmap == NULL) {
		FUNC22("IR%d: failed to allocate bitmap\n", iommu->seq_id);
		goto out_free_pages;
	}

	fn = FUNC15("INTEL-IR", iommu->seq_id);
	if (!fn)
		goto out_free_bitmap;

	iommu->ir_domain =
		FUNC16(FUNC3(),
					    0, INTR_REMAP_TABLE_ENTRIES,
					    fn, &intel_ir_domain_ops,
					    iommu);
	FUNC17(fn);
	if (!iommu->ir_domain) {
		FUNC22("IR%d: failed to allocate irqdomain\n", iommu->seq_id);
		goto out_free_bitmap;
	}
	iommu->ir_msi_domain =
		FUNC2(iommu->ir_domain,
						 "INTEL-IR-MSI",
						 iommu->seq_id);

	ir_table->base = FUNC21(pages);
	ir_table->bitmap = bitmap;
	iommu->ir_table = ir_table;

	/*
	 * If the queued invalidation is already initialized,
	 * shouldn't disable it.
	 */
	if (!iommu->qi) {
		/*
		 * Clear previous faults.
		 */
		FUNC9(-1, iommu);
		FUNC7(iommu);

		if (FUNC8(iommu)) {
			FUNC22("Failed to enable queued invalidation\n");
			goto out_free_bitmap;
		}
	}

	FUNC10(iommu);

	if (FUNC14(iommu)) {
		if (!FUNC18()) {
			FUNC24("IRQ remapping was enabled on %s but we are not in kdump mode\n",
				iommu->name);
			FUNC6(iommu);
			FUNC11(iommu);
		} else if (FUNC12(iommu))
			FUNC22("Failed to copy IR table for %s from previous kernel\n",
			       iommu->name);
		else
			FUNC23("Copied IR table for %s from previous kernel\n",
				iommu->name);
	}

	FUNC13(iommu, eim_mode);

	return 0;

out_free_bitmap:
	FUNC4(bitmap);
out_free_pages:
	FUNC0(pages, INTR_REMAP_PAGE_ORDER);
out_free_table:
	FUNC19(ir_table);

	iommu->ir_table  = NULL;

	return -ENOMEM;
}