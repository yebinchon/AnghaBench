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
typedef  int /*<<< orphan*/  u64 ;
struct i40iw_sc_dev {int dummy; } ;
struct i40iw_pble_info {unsigned long addr; int cnt; int /*<<< orphan*/  idx; } ;
struct i40iw_pble_alloc {int total_cnt; int /*<<< orphan*/  level; struct i40iw_pble_info level1; } ;
struct TYPE_2__ {struct gen_pool* pool; } ;
struct i40iw_hmc_pble_rsrc {int /*<<< orphan*/  stats_lvl1; TYPE_1__ pinfo; } ;
struct gen_pool {int dummy; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int I40IW_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  I40IW_LEVEL_1 ; 
 int /*<<< orphan*/  FUNC0 (struct i40iw_hmc_pble_rsrc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct gen_pool*,int) ; 
 scalar_t__ FUNC2 (struct gen_pool*,unsigned long) ; 

__attribute__((used)) static enum i40iw_status_code FUNC3(struct i40iw_sc_dev *dev,
					    struct i40iw_hmc_pble_rsrc *pble_rsrc,
					    struct i40iw_pble_alloc *palloc)
{
	u64 *addr;
	struct gen_pool *pool;
	struct i40iw_pble_info *lvl1 = &palloc->level1;

	pool = pble_rsrc->pinfo.pool;
	addr = (u64 *)FUNC1(pool, (palloc->total_cnt << 3));

	if (!addr)
		return I40IW_ERR_NO_MEMORY;

	palloc->level = I40IW_LEVEL_1;
	lvl1->addr = (unsigned long)addr;
	lvl1->idx = FUNC0(pble_rsrc, (u64)FUNC2(pool,
			       (unsigned long)addr));
	lvl1->cnt = palloc->total_cnt;
	pble_rsrc->stats_lvl1++;
	return 0;
}