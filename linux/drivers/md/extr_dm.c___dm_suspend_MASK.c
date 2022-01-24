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
struct mapped_device {int /*<<< orphan*/  queue; int /*<<< orphan*/  io_barrier; int /*<<< orphan*/  flags; int /*<<< orphan*/  wq; int /*<<< orphan*/  suspend_lock; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int DMF_BLOCK_IO_FOR_SUSPEND ; 
 int DMF_NOFLUSH_SUSPENDING ; 
 unsigned int DM_SUSPEND_LOCKFS_FLAG ; 
 unsigned int DM_SUSPEND_NOFLUSH_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 scalar_t__ FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_table*) ; 
 int FUNC8 (struct mapped_device*,long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct mapped_device*) ; 

__attribute__((used)) static int FUNC16(struct mapped_device *md, struct dm_table *map,
			unsigned suspend_flags, long task_state,
			int dmf_suspended_flag)
{
	bool do_lockfs = suspend_flags & DM_SUSPEND_LOCKFS_FLAG;
	bool noflush = suspend_flags & DM_SUSPEND_NOFLUSH_FLAG;
	int r;

	FUNC11(&md->suspend_lock);

	/*
	 * DMF_NOFLUSH_SUSPENDING must be set before presuspend.
	 * This flag is cleared before dm_suspend returns.
	 */
	if (noflush)
		FUNC13(DMF_NOFLUSH_SUSPENDING, &md->flags);
	else
		FUNC12("%s: suspending with flush\n", FUNC1(md));

	/*
	 * This gets reverted if there's an error later and the targets
	 * provide the .presuspend_undo hook.
	 */
	FUNC6(map);

	/*
	 * Flush I/O to the device.
	 * Any I/O submitted after lock_fs() may not be flushed.
	 * noflush takes precedence over do_lockfs.
	 * (lock_fs() flushes I/Os and waits for them to complete.)
	 */
	if (!noflush && do_lockfs) {
		r = FUNC10(md);
		if (r) {
			FUNC7(map);
			return r;
		}
	}

	/*
	 * Here we must make sure that no processes are submitting requests
	 * to target drivers i.e. no one may be executing
	 * __split_and_process_bio. This is called from dm_request and
	 * dm_wq_work.
	 *
	 * To get all processes out of __split_and_process_bio in dm_request,
	 * we take the write lock. To prevent any process from reentering
	 * __split_and_process_bio from dm_request and quiesce the thread
	 * (dm_wq_work), we set BMF_BLOCK_IO_FOR_SUSPEND and call
	 * flush_workqueue(md->wq).
	 */
	FUNC13(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags);
	if (map)
		FUNC14(&md->io_barrier);

	/*
	 * Stop md->queue before flushing md->wq in case request-based
	 * dm defers requests to md->wq from md->queue.
	 */
	if (FUNC3(md))
		FUNC5(md->queue);

	FUNC9(md->wq);

	/*
	 * At this point no more requests are entering target request routines.
	 * We call dm_wait_for_completion to wait for all existing requests
	 * to finish.
	 */
	r = FUNC8(md, task_state);
	if (!r)
		FUNC13(dmf_suspended_flag, &md->flags);

	if (noflush)
		FUNC0(DMF_NOFLUSH_SUSPENDING, &md->flags);
	if (map)
		FUNC14(&md->io_barrier);

	/* were we interrupted ? */
	if (r < 0) {
		FUNC2(md);

		if (FUNC3(md))
			FUNC4(md->queue);

		FUNC15(md);
		FUNC7(map);
		/* pushback list is already flushed, so skip flush */
	}

	return r;
}