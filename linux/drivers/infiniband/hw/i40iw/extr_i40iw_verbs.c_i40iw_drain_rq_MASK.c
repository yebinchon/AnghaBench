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
struct ib_qp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rq_ring; } ;
struct i40iw_sc_qp {TYPE_1__ qp_uk; } ;
struct i40iw_qp {int /*<<< orphan*/  rq_drained; struct i40iw_sc_qp sc_qp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct i40iw_qp* FUNC1 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ib_qp *ibqp)
{
	struct i40iw_qp *iwqp = FUNC1(ibqp);
	struct i40iw_sc_qp *qp = &iwqp->sc_qp;

	if (FUNC0(qp->qp_uk.rq_ring))
		FUNC2(&iwqp->rq_drained);
}