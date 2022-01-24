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
struct vmwgfx_gmrid_man {int /*<<< orphan*/  lock; int /*<<< orphan*/  used_gmr_pages; int /*<<< orphan*/  gmr_ida; } ;
struct ttm_mem_type_manager {scalar_t__ priv; } ;
struct ttm_mem_reg {int /*<<< orphan*/ * mm_node; scalar_t__ num_pages; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ttm_mem_type_manager *man,
				   struct ttm_mem_reg *mem)
{
	struct vmwgfx_gmrid_man *gman =
		(struct vmwgfx_gmrid_man *)man->priv;

	if (mem->mm_node) {
		FUNC0(&gman->gmr_ida, mem->start);
		FUNC1(&gman->lock);
		gman->used_gmr_pages -= mem->num_pages;
		FUNC2(&gman->lock);
		mem->mm_node = NULL;
	}
}