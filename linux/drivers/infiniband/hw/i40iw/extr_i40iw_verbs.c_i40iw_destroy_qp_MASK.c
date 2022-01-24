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
struct ib_udata {int dummy; } ;
struct ib_qp {int dummy; } ;
struct i40iw_qp {int destroyed; scalar_t__ ibqp_state; scalar_t__ iwscq; scalar_t__ iwrcq; int /*<<< orphan*/  ibqp; int /*<<< orphan*/  user_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_QP_STATE_ERROR ; 
 scalar_t__ IB_QPS_INIT ; 
 scalar_t__ IB_QPS_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct i40iw_qp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct i40iw_qp* FUNC3 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC4(struct ib_qp *ibqp, struct ib_udata *udata)
{
	struct i40iw_qp *iwqp = FUNC3(ibqp);

	iwqp->destroyed = 1;

	if (iwqp->ibqp_state >= IB_QPS_INIT && iwqp->ibqp_state < IB_QPS_RTS)
		FUNC1(iwqp, I40IW_QP_STATE_ERROR, 0, 0, 0);

	if (!iwqp->user_mode) {
		if (iwqp->iwscq) {
			FUNC0(iwqp, iwqp->iwscq);
			if (iwqp->iwrcq != iwqp->iwscq)
				FUNC0(iwqp, iwqp->iwrcq);
		}
	}

	FUNC2(&iwqp->ibqp);
	return 0;
}