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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct intel_iommu {int /*<<< orphan*/  register_lock; scalar_t__ reg; int /*<<< orphan*/  cap; int /*<<< orphan*/  ecap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
#define  DMA_TLB_DSI_FLUSH 130 
#define  DMA_TLB_GLOBAL_FLUSH 129 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int const DMA_TLB_IVT ; 
#define  DMA_TLB_PSI_FLUSH 128 
 int DMA_TLB_READ_DRAIN ; 
 int DMA_TLB_WRITE_DRAIN ; 
 int /*<<< orphan*/  FUNC4 (struct intel_iommu*,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmar_readq ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC13(struct intel_iommu *iommu, u16 did,
				u64 addr, unsigned int size_order, u64 type)
{
	int tlb_offset = FUNC8(iommu->ecap);
	u64 val = 0, val_iva = 0;
	unsigned long flag;

	switch (type) {
	case DMA_TLB_GLOBAL_FLUSH:
		/* global flush doesn't need set IVA_REG */
		val = DMA_TLB_GLOBAL_FLUSH|DMA_TLB_IVT;
		break;
	case DMA_TLB_DSI_FLUSH:
		val = DMA_TLB_DSI_FLUSH|DMA_TLB_IVT|FUNC1(did);
		break;
	case DMA_TLB_PSI_FLUSH:
		val = DMA_TLB_PSI_FLUSH|DMA_TLB_IVT|FUNC1(did);
		/* IH bit is passed in as part of address */
		val_iva = size_order | addr;
		break;
	default:
		FUNC0();
	}
	/* Note: set drain read/write */
#if 0
	/*
	 * This is probably to be super secure.. Looks like we can
	 * ignore it without any impact.
	 */
	if (cap_read_drain(iommu->cap))
		val |= DMA_TLB_READ_DRAIN;
#endif
	if (FUNC6(iommu->cap))
		val |= DMA_TLB_WRITE_DRAIN;

	FUNC11(&iommu->register_lock, flag);
	/* Note: Only uses first TLB reg currently */
	if (val_iva)
		FUNC7(iommu->reg + tlb_offset, val_iva);
	FUNC7(iommu->reg + tlb_offset + 8, val);

	/* Make sure hardware complete it */
	FUNC4(iommu, tlb_offset + 8,
		dmar_readq, (!(val & DMA_TLB_IVT)), val);

	FUNC12(&iommu->register_lock, flag);

	/* check IOTLB invalidation granularity */
	if (FUNC2(val) == 0)
		FUNC10("Flush IOTLB failed\n");
	if (FUNC2(val) != FUNC3(type))
		FUNC9("TLB flush request %Lx, actual %Lx\n",
			(unsigned long long)FUNC3(type),
			(unsigned long long)FUNC2(val));
}