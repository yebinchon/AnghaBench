#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_3__ {int qp_num; } ;
struct rvt_qp {int port_num; int /*<<< orphan*/  next; TYPE_1__ ibqp; } ;
struct rvt_ibport {int /*<<< orphan*/ * qp; } ;
struct rvt_dev_info {TYPE_2__* qp_dev; struct rvt_ibport** ports; } ;
struct TYPE_4__ {int /*<<< orphan*/  qpt_lock; int /*<<< orphan*/ * qp_table; int /*<<< orphan*/  qp_table_bits; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_qp*,size_t) ; 

__attribute__((used)) static void FUNC6(struct rvt_dev_info *rdi, struct rvt_qp *qp)
{
	struct rvt_ibport *rvp = rdi->ports[qp->port_num - 1];
	unsigned long flags;

	FUNC2(qp);
	FUNC3(&rdi->qp_dev->qpt_lock, flags);

	if (qp->ibqp.qp_num <= 1) {
		FUNC1(rvp->qp[qp->ibqp.qp_num], qp);
	} else {
		u32 n = FUNC0(qp->ibqp.qp_num, rdi->qp_dev->qp_table_bits);

		qp->next = rdi->qp_dev->qp_table[n];
		FUNC1(rdi->qp_dev->qp_table[n], qp);
		FUNC5(qp, n);
	}

	FUNC4(&rdi->qp_dev->qpt_lock, flags);
}