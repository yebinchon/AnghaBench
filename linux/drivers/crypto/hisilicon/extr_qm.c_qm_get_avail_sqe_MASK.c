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
typedef  int u16 ;
struct hisi_qp_status {int sq_tail; int /*<<< orphan*/  used; } ;
struct hisi_qp {void* sqe; TYPE_1__* qm; struct hisi_qp_status qp_status; } ;
struct TYPE_2__ {int sqe_size; } ;

/* Variables and functions */
 scalar_t__ QM_Q_DEPTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void *FUNC2(struct hisi_qp *qp)
{
	struct hisi_qp_status *qp_status = &qp->qp_status;
	u16 sq_tail = qp_status->sq_tail;

	if (FUNC1(FUNC0(&qp->qp_status.used) == QM_Q_DEPTH))
		return NULL;

	return qp->sqe + sq_tail * qp->qm->sqe_size;
}