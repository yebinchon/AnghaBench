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
struct rvt_qp {int r_flags; int /*<<< orphan*/  rspwait; scalar_t__ s_last_psn; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  qp_wait_list; } ;

/* Variables and functions */
 int RVT_R_RDMAR_SEQ ; 
 int RVT_R_RSP_SEND ; 
 int /*<<< orphan*/  FUNC0 (struct rvt_qp*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_qp*) ; 

__attribute__((used)) static void FUNC4(struct rvt_qp *qp, struct hfi1_ctxtdata *rcd)
{
	/* Retry this request. */
	if (!(qp->r_flags & RVT_R_RDMAR_SEQ)) {
		qp->r_flags |= RVT_R_RDMAR_SEQ;
		FUNC0(qp, qp->s_last_psn + 1, 0);
		if (FUNC2(&qp->rspwait)) {
			qp->r_flags |= RVT_R_RSP_SEND;
			FUNC3(qp);
			FUNC1(&qp->rspwait, &rcd->qp_wait_list);
		}
	}
}