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
struct drm_vma_offset_node {int /*<<< orphan*/  vm_node; } ;
struct drm_vma_offset_manager {int /*<<< orphan*/  vm_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_vma_offset_manager *mgr,
			   struct drm_vma_offset_node *node)
{
	FUNC3(&mgr->vm_lock);

	if (FUNC0(&node->vm_node)) {
		FUNC1(&node->vm_node);
		FUNC2(&node->vm_node, 0, sizeof(node->vm_node));
	}

	FUNC4(&mgr->vm_lock);
}