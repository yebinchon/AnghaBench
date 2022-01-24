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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct etnaviv_iommuv2_context {scalar_t__ mtlb_dma; } ;
struct etnaviv_iommu_context {TYPE_1__* global; } ;
struct etnaviv_gpu {int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {scalar_t__ bad_page_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIVS_MMUv2_CONTROL ; 
 int VIVS_MMUv2_CONTROL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct etnaviv_gpu*,int) ; 
 int FUNC4 (struct etnaviv_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int) ; 
 struct etnaviv_iommuv2_context* FUNC6 (struct etnaviv_iommu_context*) ; 

__attribute__((used)) static void FUNC7(struct etnaviv_gpu *gpu,
	struct etnaviv_iommu_context *context)
{
	struct etnaviv_iommuv2_context *v2_context = FUNC6(context);
	u16 prefetch;

	/* If the MMU is already enabled the state is still there. */
	if (FUNC4(gpu, VIVS_MMUv2_CONTROL) & VIVS_MMUv2_CONTROL_ENABLE)
		return;

	prefetch = FUNC0(gpu,
				(u32)v2_context->mtlb_dma,
				(u32)context->global->bad_page_dma);
	FUNC2(gpu, (u32)FUNC1(&gpu->buffer),
			     prefetch);
	FUNC3(gpu, 100);

	FUNC5(gpu, VIVS_MMUv2_CONTROL, VIVS_MMUv2_CONTROL_ENABLE);
}