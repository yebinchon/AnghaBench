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
struct ttm_mem_type_manager {struct amdgpu_gtt_mgr* priv; } ;
struct ttm_mem_reg {struct amdgpu_gtt_node* mm_node; int /*<<< orphan*/  num_pages; } ;
struct TYPE_2__ {scalar_t__ start; } ;
struct amdgpu_gtt_node {TYPE_1__ node; } ;
struct amdgpu_gtt_mgr {int /*<<< orphan*/  available; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_BO_INVALID_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_gtt_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ttm_mem_type_manager *man,
			       struct ttm_mem_reg *mem)
{
	struct amdgpu_gtt_mgr *mgr = man->priv;
	struct amdgpu_gtt_node *node = mem->mm_node;

	if (!node)
		return;

	FUNC3(&mgr->lock);
	if (node->node.start != AMDGPU_BO_INVALID_OFFSET)
		FUNC1(&node->node);
	FUNC4(&mgr->lock);
	FUNC0(mem->num_pages, &mgr->available);

	FUNC2(node);
	mem->mm_node = NULL;
}