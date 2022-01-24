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
struct etnaviv_iommuv2_context {int /*<<< orphan*/  id; int /*<<< orphan*/  mtlb_dma; scalar_t__ mtlb_cpu; int /*<<< orphan*/ * stlb_dma; scalar_t__* stlb_cpu; } ;
struct etnaviv_iommu_context {TYPE_2__* global; int /*<<< orphan*/  mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  pta_alloc; } ;
struct TYPE_4__ {TYPE_1__ v2; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MMUv2_MAX_STLB_ENTRIES ; 
 int /*<<< orphan*/  SZ_4K ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct etnaviv_iommuv2_context* FUNC3 (struct etnaviv_iommu_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct etnaviv_iommuv2_context*) ; 

__attribute__((used)) static void FUNC5(struct etnaviv_iommu_context *context)
{
	struct etnaviv_iommuv2_context *v2_context = FUNC3(context);
	int i;

	FUNC2(&context->mm);

	for (i = 0; i < MMUv2_MAX_STLB_ENTRIES; i++) {
		if (v2_context->stlb_cpu[i])
			FUNC1(context->global->dev, SZ_4K,
				    v2_context->stlb_cpu[i],
				    v2_context->stlb_dma[i]);
	}

	FUNC1(context->global->dev, SZ_4K, v2_context->mtlb_cpu,
		    v2_context->mtlb_dma);

	FUNC0(v2_context->id, context->global->v2.pta_alloc);

	FUNC4(v2_context);
}