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
struct rdma_cqe_responder {int dummy; } ;
struct qedr_qp {int dummy; } ;
struct qedr_dev {int dummy; } ;
struct qedr_cq {int dummy; } ;
struct ib_wc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_cq*) ; 
 int FUNC1 (struct qedr_dev*,struct qedr_qp*,struct qedr_cq*,struct ib_wc*,struct rdma_cqe_responder*) ; 

__attribute__((used)) static int FUNC2(struct qedr_dev *dev, struct qedr_qp *qp,
				 struct qedr_cq *cq, int num_entries,
				 struct ib_wc *wc,
				 struct rdma_cqe_responder *resp)
{
	int cnt;

	cnt = FUNC1(dev, qp, cq, wc, resp);
	FUNC0(cq);

	return cnt;
}