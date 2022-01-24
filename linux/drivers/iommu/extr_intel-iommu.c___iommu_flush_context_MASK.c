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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct intel_iommu {int /*<<< orphan*/  register_lock; scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ DMAR_CCMD_REG ; 
#define  DMA_CCMD_DEVICE_INVL 130 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
#define  DMA_CCMD_DOMAIN_INVL 129 
 int const FUNC2 (int /*<<< orphan*/ ) ; 
#define  DMA_CCMD_GLOBAL_INVL 128 
 int DMA_CCMD_ICC ; 
 int const FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_iommu*,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  dmar_readq ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct intel_iommu *iommu,
				  u16 did, u16 source_id, u8 function_mask,
				  u64 type)
{
	u64 val = 0;
	unsigned long flag;

	switch (type) {
	case DMA_CCMD_GLOBAL_INVL:
		val = DMA_CCMD_GLOBAL_INVL;
		break;
	case DMA_CCMD_DOMAIN_INVL:
		val = DMA_CCMD_DOMAIN_INVL|FUNC1(did);
		break;
	case DMA_CCMD_DEVICE_INVL:
		val = DMA_CCMD_DEVICE_INVL|FUNC1(did)
			| FUNC3(source_id) | FUNC2(function_mask);
		break;
	default:
		FUNC0();
	}
	val |= DMA_CCMD_ICC;

	FUNC6(&iommu->register_lock, flag);
	FUNC5(iommu->reg + DMAR_CCMD_REG, val);

	/* Make sure hardware complete it */
	FUNC4(iommu, DMAR_CCMD_REG,
		dmar_readq, (!(val & DMA_CCMD_ICC)), val);

	FUNC7(&iommu->register_lock, flag);
}