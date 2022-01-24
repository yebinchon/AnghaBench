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
typedef  scalar_t__ u32 ;
struct drm_mm_node {scalar_t__ start; } ;
struct etnaviv_vram_mapping {int use; int /*<<< orphan*/  mmu_node; scalar_t__ iova; struct drm_mm_node vram_node; } ;
struct etnaviv_iommu_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  mappings; int /*<<< orphan*/  flush_seq; TYPE_1__* global; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ version; } ;

/* Variables and functions */
 scalar_t__ ETNAVIV_IOMMU_V1 ; 
 int /*<<< orphan*/  ETNAVIV_PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node*) ; 
 int FUNC1 (struct etnaviv_iommu_context*,scalar_t__,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct etnaviv_iommu_context*,struct drm_mm_node*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct etnaviv_iommu_context *context,
				  struct etnaviv_vram_mapping *mapping,
				  u32 memory_base, dma_addr_t paddr,
				  size_t size)
{
	FUNC4(&context->lock);

	if (mapping->use > 0) {
		mapping->use++;
		FUNC5(&context->lock);
		return 0;
	}

	/*
	 * For MMUv1 we don't add the suballoc region to the pagetables, as
	 * those GPUs can only work with cmdbufs accessed through the linear
	 * window. Instead we manufacture a mapping to make it look uniform
	 * to the upper layers.
	 */
	if (context->global->version == ETNAVIV_IOMMU_V1) {
		mapping->iova = paddr - memory_base;
	} else {
		struct drm_mm_node *node = &mapping->vram_node;
		int ret;

		ret = FUNC2(context, node, size);
		if (ret < 0) {
			FUNC5(&context->lock);
			return ret;
		}

		mapping->iova = node->start;
		ret = FUNC1(context, node->start, paddr, size,
					  ETNAVIV_PROT_READ);
		if (ret < 0) {
			FUNC0(node);
			FUNC5(&context->lock);
			return ret;
		}

		context->flush_seq++;
	}

	FUNC3(&mapping->mmu_node, &context->mappings);
	mapping->use = 1;

	FUNC5(&context->lock);

	return 0;
}