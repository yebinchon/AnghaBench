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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct etnaviv_iommuv2_context {size_t id; int mtlb_dma; } ;
struct etnaviv_iommu_context {TYPE_2__* global; } ;
struct etnaviv_gpu {int /*<<< orphan*/  buffer; } ;
struct TYPE_3__ {int* pta_cpu; int /*<<< orphan*/  pta_dma; } ;
struct TYPE_4__ {TYPE_1__ v2; int /*<<< orphan*/  bad_page_dma; } ;

/* Variables and functions */
 int VIVS_MMUv2_CONFIGURATION_MODE_MODE4_K ; 
 int /*<<< orphan*/  VIVS_MMUv2_NONSEC_SAFE_ADDR_LOW ; 
 int /*<<< orphan*/  VIVS_MMUv2_PTA_ADDRESS_HIGH ; 
 int /*<<< orphan*/  VIVS_MMUv2_PTA_ADDRESS_LOW ; 
 int /*<<< orphan*/  VIVS_MMUv2_PTA_CONTROL ; 
 int VIVS_MMUv2_PTA_CONTROL_ENABLE ; 
 int /*<<< orphan*/  VIVS_MMUv2_SAFE_ADDRESS_CONFIG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  VIVS_MMUv2_SEC_CONTROL ; 
 int VIVS_MMUv2_SEC_CONTROL_ENABLE ; 
 int /*<<< orphan*/  VIVS_MMUv2_SEC_SAFE_ADDR_LOW ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_gpu*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct etnaviv_gpu*,int) ; 
 int FUNC6 (struct etnaviv_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct etnaviv_iommuv2_context* FUNC9 (struct etnaviv_iommu_context*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct etnaviv_gpu *gpu,
	struct etnaviv_iommu_context *context)
{
	struct etnaviv_iommuv2_context *v2_context = FUNC9(context);
	u16 prefetch;

	/* If the MMU is already enabled the state is still there. */
	if (FUNC6(gpu, VIVS_MMUv2_SEC_CONTROL) & VIVS_MMUv2_SEC_CONTROL_ENABLE)
		return;

	FUNC7(gpu, VIVS_MMUv2_PTA_ADDRESS_LOW,
		  FUNC8(context->global->v2.pta_dma));
	FUNC7(gpu, VIVS_MMUv2_PTA_ADDRESS_HIGH,
		  FUNC10(context->global->v2.pta_dma));
	FUNC7(gpu, VIVS_MMUv2_PTA_CONTROL, VIVS_MMUv2_PTA_CONTROL_ENABLE);

	FUNC7(gpu, VIVS_MMUv2_NONSEC_SAFE_ADDR_LOW,
		  FUNC8(context->global->bad_page_dma));
	FUNC7(gpu, VIVS_MMUv2_SEC_SAFE_ADDR_LOW,
		  FUNC8(context->global->bad_page_dma));
	FUNC7(gpu, VIVS_MMUv2_SAFE_ADDRESS_CONFIG,
		  FUNC0(
		  FUNC10(context->global->bad_page_dma)) |
		  FUNC1(
		  FUNC10(context->global->bad_page_dma)));

	context->global->v2.pta_cpu[v2_context->id] = v2_context->mtlb_dma |
				 	 VIVS_MMUv2_CONFIGURATION_MODE_MODE4_K;

	/* trigger a PTA load through the FE */
	prefetch = FUNC2(gpu, v2_context->id);
	FUNC4(gpu, (u32)FUNC3(&gpu->buffer),
			     prefetch);
	FUNC5(gpu, 100);

	FUNC7(gpu, VIVS_MMUv2_SEC_CONTROL, VIVS_MMUv2_SEC_CONTROL_ENABLE);
}