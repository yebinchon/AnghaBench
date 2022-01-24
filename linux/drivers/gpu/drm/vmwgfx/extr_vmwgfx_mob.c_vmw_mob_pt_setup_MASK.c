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
struct vmw_sg_table {int dummy; } ;
struct vmw_piter {int dummy; } ;
struct vmw_mob {int pt_level; int /*<<< orphan*/  pt_root_page; struct ttm_buffer_object* pt_bo; } ;
struct ttm_buffer_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct ttm_buffer_object*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*) ; 
 struct vmw_sg_table* FUNC4 (struct ttm_buffer_object*) ; 
 unsigned long FUNC5 (struct vmw_piter*,unsigned long,struct vmw_piter*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_piter*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_piter*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_piter*,struct vmw_sg_table const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct vmw_mob *mob,
			     struct vmw_piter data_iter,
			     unsigned long num_data_pages)
{
	unsigned long num_pt_pages = 0;
	struct ttm_buffer_object *bo = mob->pt_bo;
	struct vmw_piter save_pt_iter;
	struct vmw_piter pt_iter;
	const struct vmw_sg_table *vsgt;
	int ret;

	ret = FUNC2(bo, false, true, NULL);
	FUNC0(ret != 0);

	vsgt = FUNC4(bo);
	FUNC8(&pt_iter, vsgt, 0);
	FUNC0(!FUNC7(&pt_iter));
	mob->pt_level = 0;
	while (FUNC1(num_data_pages > 1)) {
		++mob->pt_level;
		FUNC0(mob->pt_level > 2);
		save_pt_iter = pt_iter;
		num_pt_pages = FUNC5(&data_iter, num_data_pages,
						&pt_iter);
		data_iter = save_pt_iter;
		num_data_pages = num_pt_pages;
	}

	mob->pt_root_page = FUNC6(&save_pt_iter);
	FUNC3(bo);
}