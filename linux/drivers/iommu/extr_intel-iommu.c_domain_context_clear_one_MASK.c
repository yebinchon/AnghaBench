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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_iotlb ) (struct intel_iommu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* flush_context ) (struct intel_iommu*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct intel_iommu {TYPE_1__ flush; int /*<<< orphan*/  lock; } ;
struct context_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CCMD_DEVICE_INVL ; 
 int /*<<< orphan*/  DMA_CCMD_MASK_NOBIT ; 
 int /*<<< orphan*/  DMA_TLB_DSI_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,struct context_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct context_entry*) ; 
 int FUNC2 (struct context_entry*) ; 
 struct context_entry* FUNC3 (struct intel_iommu*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_iommu*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_iommu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_iommu *iommu, u8 bus, u8 devfn)
{
	unsigned long flags;
	struct context_entry *context;
	u16 did_old;

	if (!iommu)
		return;

	FUNC4(&iommu->lock, flags);
	context = FUNC3(iommu, bus, devfn, 0);
	if (!context) {
		FUNC5(&iommu->lock, flags);
		return;
	}
	did_old = FUNC2(context);
	FUNC1(context);
	FUNC0(iommu, context, sizeof(*context));
	FUNC5(&iommu->lock, flags);
	iommu->flush.flush_context(iommu,
				   did_old,
				   (((u16)bus) << 8) | devfn,
				   DMA_CCMD_MASK_NOBIT,
				   DMA_CCMD_DEVICE_INVL);
	iommu->flush.flush_iotlb(iommu,
				 did_old,
				 0,
				 0,
				 DMA_TLB_DSI_FLUSH);
}