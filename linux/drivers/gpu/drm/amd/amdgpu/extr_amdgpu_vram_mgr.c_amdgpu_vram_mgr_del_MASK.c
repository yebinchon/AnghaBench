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
typedef  int uint64_t ;
struct ttm_mem_type_manager {struct amdgpu_vram_mgr* priv; int /*<<< orphan*/  bdev; } ;
struct ttm_mem_reg {unsigned int num_pages; struct drm_mm_node* mm_node; } ;
struct drm_mm_node {unsigned int size; } ;
struct amdgpu_vram_mgr {int /*<<< orphan*/  vis_usage; int /*<<< orphan*/  usage; int /*<<< orphan*/  lock; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 struct amdgpu_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*,struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ttm_mem_type_manager *man,
				struct ttm_mem_reg *mem)
{
	struct amdgpu_device *adev = FUNC0(man->bdev);
	struct amdgpu_vram_mgr *mgr = man->priv;
	struct drm_mm_node *nodes = mem->mm_node;
	uint64_t usage = 0, vis_usage = 0;
	unsigned pages = mem->num_pages;

	if (!mem->mm_node)
		return;

	FUNC5(&mgr->lock);
	while (pages) {
		pages -= nodes->size;
		FUNC3(nodes);
		usage += nodes->size << PAGE_SHIFT;
		vis_usage += FUNC1(adev, nodes);
		++nodes;
	}
	FUNC6(&mgr->lock);

	FUNC2(usage, &mgr->usage);
	FUNC2(vis_usage, &mgr->vis_usage);

	FUNC4(mem->mm_node);
	mem->mm_node = NULL;
}