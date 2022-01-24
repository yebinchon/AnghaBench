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
struct i40iw_pble_info {int cnt; scalar_t__ addr; } ;
struct i40iw_pble_level2 {scalar_t__ leaf_cnt; struct i40iw_pble_info* leaf; struct i40iw_pble_info root; } ;
struct i40iw_pble_alloc {struct i40iw_pble_level2 level2; } ;
struct TYPE_2__ {struct gen_pool* pool; } ;
struct i40iw_hmc_pble_rsrc {TYPE_1__ pinfo; } ;
struct gen_pool {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gen_pool*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_pble_info*) ; 

__attribute__((used)) static void FUNC2(struct i40iw_hmc_pble_rsrc *pble_rsrc,
		      struct i40iw_pble_alloc *palloc)
{
	u32 i;
	struct gen_pool *pool;
	struct i40iw_pble_level2 *lvl2 = &palloc->level2;
	struct i40iw_pble_info *root = &lvl2->root;
	struct i40iw_pble_info *leaf = lvl2->leaf;

	pool = pble_rsrc->pinfo.pool;

	for (i = 0; i < lvl2->leaf_cnt; i++, leaf++) {
		if (leaf->addr)
			FUNC0(pool, leaf->addr, (leaf->cnt << 3));
		else
			break;
	}

	if (root->addr)
		FUNC0(pool, root->addr, (root->cnt << 3));

	FUNC1(lvl2->leaf);
	lvl2->leaf = NULL;
}