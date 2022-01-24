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

/* Variables and functions */
 int RVT_S_WAIT_RNR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rvt_qp *qp)
{
	FUNC0(&qp->s_lock);
	/* Remove QP from rnr timer */
	if (qp->s_flags & RVT_S_WAIT_RNR) {
		qp->s_flags &= ~RVT_S_WAIT_RNR;
		FUNC1(qp, 0);
	}
}