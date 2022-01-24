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
typedef  int u64 ;
struct etnaviv_iommu_context {int /*<<< orphan*/  mm; int /*<<< orphan*/  mappings; int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; struct etnaviv_iommu_global* global; } ;
struct etnaviv_iommuv2_context {size_t id; struct etnaviv_iommu_context base; int /*<<< orphan*/  mtlb_dma; int /*<<< orphan*/  mtlb_cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  pta_alloc; int /*<<< orphan*/ * pta_cpu; } ;
struct etnaviv_iommu_global {TYPE_1__ v2; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t ETNAVIV_PTA_ENTRIES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MMUv2_MAX_STLB_ENTRIES ; 
 int /*<<< orphan*/  MMUv2_PTE_EXCEPTION ; 
 scalar_t__ SZ_1G ; 
 scalar_t__ SZ_4K ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct etnaviv_iommuv2_context*) ; 
 struct etnaviv_iommuv2_context* FUNC12 (int) ; 

struct etnaviv_iommu_context *
FUNC13(struct etnaviv_iommu_global *global)
{
	struct etnaviv_iommuv2_context *v2_context;
	struct etnaviv_iommu_context *context;

	v2_context = FUNC12(sizeof(*v2_context));
	if (!v2_context)
		return NULL;

	FUNC8(&global->lock);
	v2_context->id = FUNC4(global->v2.pta_alloc,
					     ETNAVIV_PTA_ENTRIES);
	if (v2_context->id < ETNAVIV_PTA_ENTRIES) {
		FUNC10(v2_context->id, global->v2.pta_alloc);
	} else {
		FUNC9(&global->lock);
		goto out_free;
	}
	FUNC9(&global->lock);

	v2_context->mtlb_cpu = FUNC2(global->dev, SZ_4K,
					    &v2_context->mtlb_dma, GFP_KERNEL);
	if (!v2_context->mtlb_cpu)
		goto out_free_id;

	FUNC6(v2_context->mtlb_cpu, MMUv2_PTE_EXCEPTION,
		 MMUv2_MAX_STLB_ENTRIES);

	global->v2.pta_cpu[v2_context->id] = v2_context->mtlb_dma;

	context = &v2_context->base;
	context->global = global;
	FUNC5(&context->refcount);
	FUNC7(&context->lock);
	FUNC0(&context->mappings);
	FUNC3(&context->mm, SZ_4K, (u64)SZ_1G * 4 - SZ_4K);

	return context;

out_free_id:
	FUNC1(v2_context->id, global->v2.pta_alloc);
out_free:
	FUNC11(v2_context);
	return NULL;
}