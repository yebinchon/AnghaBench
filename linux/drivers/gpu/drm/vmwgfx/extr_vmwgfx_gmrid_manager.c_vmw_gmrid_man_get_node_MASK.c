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
struct vmwgfx_gmrid_man {scalar_t__ max_gmr_pages; scalar_t__ used_gmr_pages; int /*<<< orphan*/  gmr_ida; int /*<<< orphan*/  lock; scalar_t__ max_gmr_ids; } ;
struct ttm_place {int dummy; } ;
struct ttm_mem_type_manager {scalar_t__ priv; } ;
struct ttm_mem_reg {int start; scalar_t__ num_pages; struct vmwgfx_gmrid_man* mm_node; } ;
struct ttm_buffer_object {scalar_t__ num_pages; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ttm_mem_type_manager *man,
				  struct ttm_buffer_object *bo,
				  const struct ttm_place *place,
				  struct ttm_mem_reg *mem)
{
	struct vmwgfx_gmrid_man *gman =
		(struct vmwgfx_gmrid_man *)man->priv;
	int id;

	mem->mm_node = NULL;

	id = FUNC0(&gman->gmr_ida, gman->max_gmr_ids - 1, GFP_KERNEL);
	if (id < 0)
		return (id != -ENOMEM ? 0 : id);

	FUNC2(&gman->lock);

	if (gman->max_gmr_pages > 0) {
		gman->used_gmr_pages += bo->num_pages;
		if (FUNC4(gman->used_gmr_pages > gman->max_gmr_pages))
			goto nospace;
	}

	mem->mm_node = gman;
	mem->start = id;
	mem->num_pages = bo->num_pages;

	FUNC3(&gman->lock);
	return 0;

nospace:
	gman->used_gmr_pages -= bo->num_pages;
	FUNC3(&gman->lock);
	FUNC1(&gman->gmr_ida, id);
	return 0;
}