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
struct pvrdma_srq {size_t srq_handle; int /*<<< orphan*/  pdir; int /*<<< orphan*/  umem; int /*<<< orphan*/  free; int /*<<< orphan*/  refcnt; } ;
struct pvrdma_dev {int /*<<< orphan*/  num_srqs; int /*<<< orphan*/  srq_tbl_lock; int /*<<< orphan*/ ** srq_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvrdma_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pvrdma_dev *dev, struct pvrdma_srq *srq)
{
	unsigned long flags;

	FUNC5(&dev->srq_tbl_lock, flags);
	dev->srq_tbl[srq->srq_handle] = NULL;
	FUNC6(&dev->srq_tbl_lock, flags);

	if (FUNC4(&srq->refcnt))
		FUNC1(&srq->free);
	FUNC7(&srq->free);

	/* There is no support for kernel clients, so this is safe. */
	FUNC2(srq->umem);

	FUNC3(dev, &srq->pdir);

	FUNC0(&dev->num_srqs);
}