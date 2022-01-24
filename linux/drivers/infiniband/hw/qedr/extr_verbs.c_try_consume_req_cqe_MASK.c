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
struct rdma_cqe_requester {int /*<<< orphan*/  sq_cons; } ;
struct TYPE_2__ {scalar_t__ wqe_cons; } ;
struct qedr_qp {TYPE_1__ sq; } ;
struct qedr_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_cq*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qedr_cq *cq, struct qedr_qp *qp,
				struct rdma_cqe_requester *req, int *update)
{
	if (FUNC1(req->sq_cons) == qp->sq.wqe_cons) {
		FUNC0(cq);
		*update |= 1;
	}
}