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
typedef  int u32 ;
struct mthca_srq {int wqe_shift; int last_free; int /*<<< orphan*/  lock; } ;
struct mthca_next_seg {int /*<<< orphan*/  nda_op; } ;

/* Variables and functions */
 struct mthca_next_seg* FUNC0 (struct mthca_srq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (struct mthca_next_seg*) ; 

void FUNC5(struct mthca_srq *srq, u32 wqe_addr)
{
	int ind;
	struct mthca_next_seg *last_free;

	ind = wqe_addr >> srq->wqe_shift;

	FUNC2(&srq->lock);

	last_free = FUNC0(srq, srq->last_free);
	*FUNC4(last_free) = ind;
	last_free->nda_op = FUNC1((ind << srq->wqe_shift) | 1);
	*FUNC4(FUNC0(srq, ind)) = -1;
	srq->last_free = ind;

	FUNC3(&srq->lock);
}