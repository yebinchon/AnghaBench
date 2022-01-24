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
struct ib_uverbs_file {int /*<<< orphan*/  ucontext_lock; int /*<<< orphan*/  hw_destroy_rwsem; int /*<<< orphan*/  uobjects; TYPE_1__* ucontext; } ;
typedef  enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;
struct TYPE_2__ {int closing; int cleanup_retryable; } ;

/* Variables and functions */
 int RDMA_REMOVE_CLOSE ; 
 scalar_t__ FUNC0 (struct ib_uverbs_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_uverbs_file*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct ib_uverbs_file *ufile,
			     enum rdma_remove_reason reason)
{
	if (reason == RDMA_REMOVE_CLOSE) {
		/*
		 * During destruction we might trigger something that
		 * synchronously calls release on any file descriptor. For
		 * this reason all paths that come from file_operations
		 * release must use try_lock. They can progress knowing that
		 * there is an ongoing uverbs_destroy_ufile_hw that will clean
		 * up the driver resources.
		 */
		if (!FUNC4(&ufile->ucontext_lock))
			return;

	} else {
		FUNC3(&ufile->ucontext_lock);
	}

	FUNC1(&ufile->hw_destroy_rwsem);

	/*
	 * If a ucontext was never created then we can't have any uobjects to
	 * cleanup, nothing to do.
	 */
	if (!ufile->ucontext)
		goto done;

	ufile->ucontext->closing = true;
	ufile->ucontext->cleanup_retryable = true;
	while (!FUNC2(&ufile->uobjects))
		if (FUNC0(ufile, reason)) {
			/*
			 * No entry was cleaned-up successfully during this
			 * iteration
			 */
			break;
		}

	ufile->ucontext->cleanup_retryable = false;
	if (!FUNC2(&ufile->uobjects))
		FUNC0(ufile, reason);

	FUNC6(ufile, reason);

done:
	FUNC7(&ufile->hw_destroy_rwsem);
	FUNC5(&ufile->ucontext_lock);
}