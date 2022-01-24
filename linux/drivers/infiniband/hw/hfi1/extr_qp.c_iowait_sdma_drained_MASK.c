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
struct rvt_qp {int s_flags; int /*<<< orphan*/  s_lock; } ;
struct iowait {int dummy; } ;

/* Variables and functions */
 int RVT_S_WAIT_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct rvt_qp*) ; 
 struct rvt_qp* FUNC1 (struct iowait*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct iowait *wait)
{
	struct rvt_qp *qp = FUNC1(wait);
	unsigned long flags;

	/*
	 * This happens when the send engine notes
	 * a QP in the error state and cannot
	 * do the flush work until that QP's
	 * sdma work has finished.
	 */
	FUNC2(&qp->s_lock, flags);
	if (qp->s_flags & RVT_S_WAIT_DMA) {
		qp->s_flags &= ~RVT_S_WAIT_DMA;
		FUNC0(qp);
	}
	FUNC3(&qp->s_lock, flags);
}