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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct i40iw_sc_qp {int term_flags; scalar_t__ back_qp; } ;
struct i40iw_qp {int /*<<< orphan*/  lock; scalar_t__ hte_added; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_QP_STATE_CLOSING ; 
 int /*<<< orphan*/  I40IW_QP_STATE_ERROR ; 
 int I40IW_TERM_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct i40iw_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_qp*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_sc_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct i40iw_sc_qp *qp, int timeout_occurred)
{
	struct i40iw_qp *iwqp;
	u32 next_iwarp_state = I40IW_QP_STATE_ERROR;
	u8 hte = 0;
	bool first_time;
	unsigned long flags;

	iwqp = (struct i40iw_qp *)qp->back_qp;
	FUNC3(&iwqp->lock, flags);
	if (iwqp->hte_added) {
		iwqp->hte_added = 0;
		hte = 1;
	}
	first_time = !(qp->term_flags & I40IW_TERM_DONE);
	qp->term_flags |= I40IW_TERM_DONE;
	FUNC4(&iwqp->lock, flags);
	if (first_time) {
		if (!timeout_occurred)
			FUNC2(qp);
		else
			next_iwarp_state = I40IW_QP_STATE_CLOSING;

		FUNC1(iwqp, next_iwarp_state, hte, 0, 0);
		FUNC0(iwqp);
	}
}