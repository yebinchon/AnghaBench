#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  error_if_no_space; } ;
struct pool_c {TYPE_4__ adjusted_pf; TYPE_2__ requested_pf; } ;
struct TYPE_7__ {int mode; int /*<<< orphan*/  error_if_no_space; } ;
struct pool {int out_of_data_space; TYPE_3__ pf; void* process_prepared_mapping; void* process_cell; void* process_discard; void* process_bio; int /*<<< orphan*/  pmd; int /*<<< orphan*/  no_space_timeout; int /*<<< orphan*/  wq; int /*<<< orphan*/  process_prepared_discard; void* process_discard_cell; int /*<<< orphan*/  pool_md; TYPE_1__* ti; } ;
typedef  enum pool_mode { ____Placeholder_pool_mode } pool_mode ;
struct TYPE_5__ {struct pool_c* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned long HZ ; 
#define  PM_FAIL 132 
#define  PM_OUT_OF_DATA_SPACE 131 
#define  PM_OUT_OF_METADATA_SPACE 130 
#define  PM_READ_ONLY 129 
#define  PM_WRITE 128 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pool*) ; 
 int FUNC8 (struct pool*) ; 
 int /*<<< orphan*/  no_space_timeout_secs ; 
 int /*<<< orphan*/  FUNC9 (struct pool*) ; 
 void* process_bio ; 
 void* process_bio_fail ; 
 void* process_bio_read_only ; 
 void* process_bio_success ; 
 void* process_cell ; 
 void* process_cell_fail ; 
 void* process_cell_read_only ; 
 void* process_cell_success ; 
 void* process_discard_bio ; 
 int /*<<< orphan*/  process_prepared_discard_fail ; 
 int /*<<< orphan*/  process_prepared_discard_success ; 
 void* process_prepared_mapping ; 
 void* process_prepared_mapping_fail ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct pool*) ; 

__attribute__((used)) static void FUNC12(struct pool *pool, enum pool_mode new_mode)
{
	struct pool_c *pt = pool->ti->private;
	bool needs_check = FUNC4(pool->pmd);
	enum pool_mode old_mode = FUNC8(pool);
	unsigned long no_space_timeout = FUNC1(no_space_timeout_secs) * HZ;

	/*
	 * Never allow the pool to transition to PM_WRITE mode if user
	 * intervention is required to verify metadata and data consistency.
	 */
	if (new_mode == PM_WRITE && needs_check) {
		FUNC0("%s: unable to switch pool to write mode until repaired.",
		      FUNC3(pool->pool_md));
		if (old_mode != new_mode)
			new_mode = old_mode;
		else
			new_mode = PM_READ_ONLY;
	}
	/*
	 * If we were in PM_FAIL mode, rollback of metadata failed.  We're
	 * not going to recover without a thin_repair.	So we never let the
	 * pool move out of the old mode.
	 */
	if (old_mode == PM_FAIL)
		new_mode = old_mode;

	switch (new_mode) {
	case PM_FAIL:
		FUNC5(pool->pmd);
		pool->process_bio = process_bio_fail;
		pool->process_discard = process_bio_fail;
		pool->process_cell = process_cell_fail;
		pool->process_discard_cell = process_cell_fail;
		pool->process_prepared_mapping = process_prepared_mapping_fail;
		pool->process_prepared_discard = process_prepared_discard_fail;

		FUNC7(pool);
		break;

	case PM_OUT_OF_METADATA_SPACE:
	case PM_READ_ONLY:
		FUNC5(pool->pmd);
		pool->process_bio = process_bio_read_only;
		pool->process_discard = process_bio_success;
		pool->process_cell = process_cell_read_only;
		pool->process_discard_cell = process_cell_success;
		pool->process_prepared_mapping = process_prepared_mapping_fail;
		pool->process_prepared_discard = process_prepared_discard_success;

		FUNC7(pool);
		break;

	case PM_OUT_OF_DATA_SPACE:
		/*
		 * Ideally we'd never hit this state; the low water mark
		 * would trigger userland to extend the pool before we
		 * completely run out of data space.  However, many small
		 * IOs to unprovisioned space can consume data space at an
		 * alarming rate.  Adjust your low water mark if you're
		 * frequently seeing this mode.
		 */
		pool->out_of_data_space = true;
		pool->process_bio = process_bio_read_only;
		pool->process_discard = process_discard_bio;
		pool->process_cell = process_cell_read_only;
		pool->process_prepared_mapping = process_prepared_mapping;
		FUNC11(pool);

		if (!pool->pf.error_if_no_space && no_space_timeout)
			FUNC10(pool->wq, &pool->no_space_timeout, no_space_timeout);
		break;

	case PM_WRITE:
		if (old_mode == PM_OUT_OF_DATA_SPACE)
			FUNC2(&pool->no_space_timeout);
		pool->out_of_data_space = false;
		pool->pf.error_if_no_space = pt->requested_pf.error_if_no_space;
		FUNC6(pool->pmd);
		pool->process_bio = process_bio;
		pool->process_discard = process_discard_bio;
		pool->process_cell = process_cell;
		pool->process_prepared_mapping = process_prepared_mapping;
		FUNC11(pool);
		break;
	}

	pool->pf.mode = new_mode;
	/*
	 * The pool mode may have changed, sync it so bind_control_target()
	 * doesn't cause an unexpected mode transition on resume.
	 */
	pt->adjusted_pf.mode = new_mode;

	if (old_mode != new_mode)
		FUNC9(pool);
}