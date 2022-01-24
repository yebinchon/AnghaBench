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
struct ib_pool_fmr {scalar_t__ remap_count; int /*<<< orphan*/  list; int /*<<< orphan*/  ref_count; struct ib_fmr_pool* pool; } ;
struct ib_fmr_pool {scalar_t__ max_remaps; scalar_t__ dirty_len; scalar_t__ dirty_watermark; int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  work; int /*<<< orphan*/  worker; int /*<<< orphan*/  req_ser; int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct ib_pool_fmr *fmr)
{
	struct ib_fmr_pool *pool;
	unsigned long flags;

	pool = fmr->pool;

	FUNC3(&pool->pool_lock, flags);

	--fmr->ref_count;
	if (!fmr->ref_count) {
		if (fmr->remap_count < pool->max_remaps) {
			FUNC2(&fmr->list, &pool->free_list);
		} else {
			FUNC2(&fmr->list, &pool->dirty_list);
			if (++pool->dirty_len >= pool->dirty_watermark) {
				FUNC0(&pool->req_ser);
				FUNC1(pool->worker, &pool->work);
			}
		}
	}

	FUNC4(&pool->pool_lock, flags);
}