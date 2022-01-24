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
struct qib_user_sdma_queue {int num_pending; TYPE_1__* sdma_rb_node; } ;
struct list_head {int dummy; } ;
struct qib_pportdata {int lflags; int /*<<< orphan*/  sdma_lock; struct list_head sdma_userpending; } ;
struct TYPE_2__ {int refcount; } ;

/* Variables and functions */
 int ECOMM ; 
 int QIBL_LINKACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct qib_pportdata *ppd,
				 struct qib_user_sdma_queue *pq,
				 struct list_head *pktlist, int count)
{
	unsigned long flags;

	if (FUNC7(!(ppd->lflags & QIBL_LINKACTIVE)))
		return -ECOMM;

	/* non-blocking mode */
	if (pq->sdma_rb_node->refcount > 1) {
		FUNC5(&ppd->sdma_lock, flags);
		if (FUNC7(!FUNC0(ppd))) {
			FUNC6(&ppd->sdma_lock, flags);
			return -ECOMM;
		}
		pq->num_pending += count;
		FUNC2(pktlist, &ppd->sdma_userpending);
		FUNC4(ppd, &ppd->sdma_userpending);
		FUNC6(&ppd->sdma_lock, flags);
		return 0;
	}

	/* In this case, descriptors from this process are not
	 * linked to ppd pending queue, interrupt handler
	 * won't update this process, it is OK to directly
	 * modify without sdma lock.
	 */


	pq->num_pending += count;
	/*
	 * Blocking mode for single rail process, we must
	 * release/regain sdma_lock to give other process
	 * chance to make progress. This is important for
	 * performance.
	 */
	do {
		FUNC5(&ppd->sdma_lock, flags);
		if (FUNC7(!FUNC0(ppd))) {
			FUNC6(&ppd->sdma_lock, flags);
			return -ECOMM;
		}
		FUNC4(ppd, pktlist);
		if (!FUNC1(pktlist))
			FUNC3(ppd);
		FUNC6(&ppd->sdma_lock, flags);
	} while (!FUNC1(pktlist));

	return 0;
}