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
struct qedr_qp {int dummy; } ;
struct qedr_dev {int gsi_qp_created; struct qedr_qp* gsi_qp; void* gsi_rqcq; void* gsi_sqcq; } ;
struct ib_qp_init_attr {int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct qedr_dev *dev, struct qedr_qp *qp,
			  struct ib_qp_init_attr *attrs)
{
	dev->gsi_qp_created = 1;
	dev->gsi_sqcq = FUNC0(attrs->send_cq);
	dev->gsi_rqcq = FUNC0(attrs->recv_cq);
	dev->gsi_qp = qp;
}