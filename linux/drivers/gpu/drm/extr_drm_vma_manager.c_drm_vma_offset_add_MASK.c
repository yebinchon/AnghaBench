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
struct drm_vma_offset_manager {int /*<<< orphan*/  vm_lock; int /*<<< orphan*/  vm_addr_space_mm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_vma_offset_manager *mgr,
		       struct drm_vma_offset_node *node, unsigned long pages)
{
	int ret = 0;

	FUNC2(&mgr->vm_lock);

	if (!FUNC1(&node->vm_node))
		ret = FUNC0(&mgr->vm_addr_space_mm,
					 &node->vm_node, pages);

	FUNC3(&mgr->vm_lock);

	return ret;
}