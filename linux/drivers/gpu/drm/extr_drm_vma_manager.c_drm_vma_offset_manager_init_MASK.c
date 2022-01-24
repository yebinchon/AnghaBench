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
struct drm_vma_offset_manager {int /*<<< orphan*/  vm_addr_space_mm; int /*<<< orphan*/  vm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct drm_vma_offset_manager *mgr,
				 unsigned long page_offset, unsigned long size)
{
	FUNC1(&mgr->vm_lock);
	FUNC0(&mgr->vm_addr_space_mm, page_offset, size);
}