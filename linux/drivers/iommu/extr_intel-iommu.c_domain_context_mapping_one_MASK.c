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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct pasid_table {struct dma_pte* table; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_iotlb ) (struct intel_iommu*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* flush_context ) (struct intel_iommu*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct intel_iommu {size_t seq_id; int agaw; int msagaw; int /*<<< orphan*/  lock; TYPE_1__ flush; int /*<<< orphan*/  cap; } ;
struct dmar_domain {scalar_t__* iommu_did; int agaw; struct dma_pte* pgd; } ;
struct dma_pte {int dummy; } ;
struct device_domain_info {scalar_t__ ats_supported; scalar_t__ pri_supported; } ;
struct context_entry {int lo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONTEXT_TT_DEV_IOTLB ; 
 int CONTEXT_TT_MULTI_LEVEL ; 
 int CONTEXT_TT_PASS_THROUGH ; 
 int /*<<< orphan*/  DMA_CCMD_DEVICE_INVL ; 
 int /*<<< orphan*/  DMA_CCMD_MASK_NOBIT ; 
 int /*<<< orphan*/  DMA_TLB_DSI_FLUSH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PASID_RID2PASID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct context_entry*) ; 
 scalar_t__ FUNC7 (struct context_entry*) ; 
 scalar_t__ FUNC8 (struct context_entry*) ; 
 unsigned long FUNC9 (struct pasid_table*) ; 
 int FUNC10 (unsigned long) ; 
 scalar_t__ FUNC11 (struct context_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct context_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct context_entry*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct context_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct context_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct context_entry*) ; 
 int /*<<< orphan*/  FUNC17 (struct context_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct context_entry*) ; 
 int /*<<< orphan*/  FUNC19 (struct context_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct context_entry*,int) ; 
 int /*<<< orphan*/  device_domain_lock ; 
 int /*<<< orphan*/  FUNC21 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC22 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC23 (struct dmar_domain*,struct context_entry*,int) ; 
 scalar_t__ FUNC24 (struct dmar_domain*) ; 
 scalar_t__ hw_pass_through ; 
 struct context_entry* FUNC25 (struct intel_iommu*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 (struct device_domain_info*) ; 
 int /*<<< orphan*/  FUNC27 (struct intel_iommu*) ; 
 struct device_domain_info* FUNC28 (struct dmar_domain*,struct intel_iommu*,scalar_t__,scalar_t__) ; 
 struct dma_pte* FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC36 (struct intel_iommu*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct intel_iommu*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct intel_iommu*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct intel_iommu*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC40 (struct dma_pte*) ; 

__attribute__((used)) static int FUNC41(struct dmar_domain *domain,
				      struct intel_iommu *iommu,
				      struct pasid_table *table,
				      u8 bus, u8 devfn)
{
	u16 did = domain->iommu_did[iommu->seq_id];
	int translation = CONTEXT_TT_MULTI_LEVEL;
	struct device_domain_info *info = NULL;
	struct context_entry *context;
	unsigned long flags;
	int ret;

	FUNC3(did == 0);

	if (hw_pass_through && FUNC24(domain))
		translation = CONTEXT_TT_PASS_THROUGH;

	FUNC30("Set context mapping for %02x:%02x.%d\n",
		bus, FUNC2(devfn), FUNC1(devfn));

	FUNC0(!domain->pgd);

	FUNC33(&device_domain_lock, flags);
	FUNC32(&iommu->lock);

	ret = -ENOMEM;
	context = FUNC25(iommu, bus, devfn, 1);
	if (!context)
		goto out_unlock;

	ret = 0;
	if (FUNC11(context))
		goto out_unlock;

	/*
	 * For kdump cases, old valid entries may be cached due to the
	 * in-flight DMA and copied pgtable, but there is no unmapping
	 * behaviour for them, thus we need an explicit cache flush for
	 * the newly-mapped device. For kdump, at this point, the device
	 * is supposed to finish reset at its driver probe stage, so no
	 * in-flight DMA will exist, and we don't need to worry anymore
	 * hereafter.
	 */
	if (FUNC7(context)) {
		u16 did_old = FUNC8(context);

		if (did_old < FUNC5(iommu->cap)) {
			iommu->flush.flush_context(iommu, did_old,
						   (((u16)bus) << 8) | devfn,
						   DMA_CCMD_MASK_NOBIT,
						   DMA_CCMD_DEVICE_INVL);
			iommu->flush.flush_iotlb(iommu, did_old, 0, 0,
						 DMA_TLB_DSI_FLUSH);
		}
	}

	FUNC6(context);

	if (FUNC31(iommu)) {
		unsigned long pds;

		FUNC3(!table);

		/* Setup the PASID DIR pointer: */
		pds = FUNC9(table);
		context->lo = (u64)FUNC40(table->table) |
				FUNC10(pds);

		/* Setup the RID_PASID field: */
		FUNC19(context, PASID_RID2PASID);

		/*
		 * Setup the Device-TLB enable bit and Page request
		 * Enable bit:
		 */
		info = FUNC28(domain, iommu, bus, devfn);
		if (info && info->ats_supported)
			FUNC17(context);
		if (info && info->pri_supported)
			FUNC18(context);
	} else {
		struct dma_pte *pgd = domain->pgd;
		int agaw;

		FUNC14(context, did);

		if (translation != CONTEXT_TT_PASS_THROUGH) {
			/*
			 * Skip top levels of page tables for iommu which has
			 * less agaw than default. Unnecessary for PT mode.
			 */
			for (agaw = domain->agaw; agaw > iommu->agaw; agaw--) {
				ret = -ENOMEM;
				pgd = FUNC29(FUNC21(pgd));
				if (!FUNC22(pgd))
					goto out_unlock;
			}

			info = FUNC28(domain, iommu, bus, devfn);
			if (info && info->ats_supported)
				translation = CONTEXT_TT_DEV_IOTLB;
			else
				translation = CONTEXT_TT_MULTI_LEVEL;

			FUNC12(context, FUNC40(pgd));
			FUNC13(context, agaw);
		} else {
			/*
			 * In pass through mode, AW must be programmed to
			 * indicate the largest AGAW value supported by
			 * hardware. And ASR is ignored by hardware.
			 */
			FUNC13(context, iommu->msagaw);
		}

		FUNC20(context, translation);
	}

	FUNC15(context);
	FUNC16(context);
	FUNC23(domain, context, sizeof(*context));

	/*
	 * It's a non-present to present mapping. If hardware doesn't cache
	 * non-present entry we only need to flush the write-buffer. If the
	 * _does_ cache non-present entries, then it does so in the special
	 * domain #0, which we have to flush:
	 */
	if (FUNC4(iommu->cap)) {
		iommu->flush.flush_context(iommu, 0,
					   (((u16)bus) << 8) | devfn,
					   DMA_CCMD_MASK_NOBIT,
					   DMA_CCMD_DEVICE_INVL);
		iommu->flush.flush_iotlb(iommu, did, 0, 0, DMA_TLB_DSI_FLUSH);
	} else {
		FUNC27(iommu);
	}
	FUNC26(info);

	ret = 0;

out_unlock:
	FUNC34(&iommu->lock);
	FUNC35(&device_domain_lock, flags);

	return ret;
}