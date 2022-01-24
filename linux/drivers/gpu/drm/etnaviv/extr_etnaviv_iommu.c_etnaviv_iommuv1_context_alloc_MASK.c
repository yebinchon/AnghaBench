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
struct etnaviv_iommu_context {struct etnaviv_iommu_global* global; int /*<<< orphan*/  mm; int /*<<< orphan*/  mappings; int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; } ;
struct etnaviv_iommuv1_context {struct etnaviv_iommu_context base; int /*<<< orphan*/  pgtable_cpu; int /*<<< orphan*/  pgtable_dma; } ;
struct TYPE_2__ {struct etnaviv_iommu_context* shared_context; } ;
struct etnaviv_iommu_global {int /*<<< orphan*/  lock; TYPE_1__ v1; int /*<<< orphan*/  bad_page_dma; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPU_MEM_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PT_ENTRIES ; 
 int /*<<< orphan*/  PT_SIZE ; 
 int SZ_4K ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct etnaviv_iommu_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct etnaviv_iommuv1_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct etnaviv_iommuv1_context* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct etnaviv_iommu_context *
FUNC11(struct etnaviv_iommu_global *global)
{
	struct etnaviv_iommuv1_context *v1_context;
	struct etnaviv_iommu_context *context;

	FUNC9(&global->lock);

	/*
	 * MMUv1 does not support switching between different contexts without
	 * a stop the world operation, so we only support a single shared
	 * context with this version.
	 */
	if (global->v1.shared_context) {
		context = global->v1.shared_context;
		FUNC3(context);
		FUNC10(&global->lock);
		return context;
	}

	v1_context = FUNC6(sizeof(*v1_context), GFP_KERNEL);
	if (!v1_context) {
		FUNC10(&global->lock);
		return NULL;
	}

	v1_context->pgtable_cpu = FUNC1(global->dev, PT_SIZE,
					       &v1_context->pgtable_dma,
					       GFP_KERNEL);
	if (!v1_context->pgtable_cpu)
		goto out_free;

	FUNC7(v1_context->pgtable_cpu, global->bad_page_dma, PT_ENTRIES);

	context = &v1_context->base;
	context->global = global;
	FUNC5(&context->refcount);
	FUNC8(&context->lock);
	FUNC0(&context->mappings);
	FUNC2(&context->mm, GPU_MEM_START, PT_ENTRIES * SZ_4K);
	context->global->v1.shared_context = context;

	FUNC10(&global->lock);

	return context;

out_free:
	FUNC10(&global->lock);
	FUNC4(v1_context);
	return NULL;
}