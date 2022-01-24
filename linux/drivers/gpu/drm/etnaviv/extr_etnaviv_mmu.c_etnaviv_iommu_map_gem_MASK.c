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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct sg_table {int nents; int /*<<< orphan*/  sgl; } ;
struct drm_mm_node {int start; } ;
struct etnaviv_vram_mapping {int iova; int /*<<< orphan*/  mmu_node; struct drm_mm_node vram_node; } ;
struct etnaviv_iommu_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  flush_seq; int /*<<< orphan*/  mappings; TYPE_1__* global; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct etnaviv_gem_object {int flags; TYPE_2__ base; int /*<<< orphan*/  lock; struct sg_table* sgt; } ;
struct TYPE_3__ {scalar_t__ version; } ;

/* Variables and functions */
 scalar_t__ ETNAVIV_IOMMU_V1 ; 
 int ETNAVIV_PROT_READ ; 
 int ETNAVIV_PROT_WRITE ; 
 int ETNA_BO_FORCE_MMU ; 
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node*) ; 
 int FUNC1 (struct etnaviv_iommu_context*,struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct etnaviv_iommu_context*,struct drm_mm_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct etnaviv_iommu_context*,int,struct sg_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct etnaviv_iommu_context *context,
	struct etnaviv_gem_object *etnaviv_obj, u32 memory_base,
	struct etnaviv_vram_mapping *mapping, u64 va)
{
	struct sg_table *sgt = etnaviv_obj->sgt;
	struct drm_mm_node *node;
	int ret;

	FUNC5(&etnaviv_obj->lock);

	FUNC6(&context->lock);

	/* v1 MMU can optimize single entry (contiguous) scatterlists */
	if (context->global->version == ETNAVIV_IOMMU_V1 &&
	    sgt->nents == 1 && !(etnaviv_obj->flags & ETNA_BO_FORCE_MMU)) {
		u32 iova;

		iova = FUNC8(sgt->sgl) - memory_base;
		if (iova < 0x80000000 - FUNC9(sgt->sgl)) {
			mapping->iova = iova;
			FUNC4(&mapping->mmu_node, &context->mappings);
			ret = 0;
			goto unlock;
		}
	}

	node = &mapping->vram_node;

	if (va)
		ret = FUNC2(context, node,
						 etnaviv_obj->base.size, va);
	else
		ret = FUNC1(context, node,
					      etnaviv_obj->base.size);
	if (ret < 0)
		goto unlock;

	mapping->iova = node->start;
	ret = FUNC3(context, node->start, sgt, etnaviv_obj->base.size,
				ETNAVIV_PROT_READ | ETNAVIV_PROT_WRITE);

	if (ret < 0) {
		FUNC0(node);
		goto unlock;
	}

	FUNC4(&mapping->mmu_node, &context->mappings);
	context->flush_seq++;
unlock:
	FUNC7(&context->lock);

	return ret;
}