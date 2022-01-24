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
struct qedr_qp {int /*<<< orphan*/  qp_id; TYPE_1__* dev; int /*<<< orphan*/  refcnt; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct qedr_qp* FUNC1 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct qedr_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct ib_qp *ibqp)
{
	struct qedr_qp *qp = FUNC1(ibqp);

	if (FUNC0(&qp->refcnt)) {
		FUNC3(&qp->dev->qps, qp->qp_id);
		FUNC2(qp);
	}
}