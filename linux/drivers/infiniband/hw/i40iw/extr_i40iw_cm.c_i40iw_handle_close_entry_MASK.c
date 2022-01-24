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
typedef  scalar_t__ u32 ;
struct iw_cm_id {int /*<<< orphan*/  (* rem_ref ) (struct iw_cm_id*) ;} ;
struct i40iw_timer_entry {scalar_t__ sqbuf; } ;
struct i40iw_qp {int /*<<< orphan*/  lock; int /*<<< orphan*/  ibqp_state; int /*<<< orphan*/  last_aeq; int /*<<< orphan*/  hw_iwarp_state; int /*<<< orphan*/  hw_tcp_state; scalar_t__ cm_id; } ;
struct i40iw_cm_node {struct i40iw_timer_entry* close_entry; struct iw_cm_id* cm_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_AE_RESET_SENT ; 
 int /*<<< orphan*/  I40IW_QP_STATE_ERROR ; 
 int /*<<< orphan*/  I40IW_TCP_STATE_CLOSED ; 
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct i40iw_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_timer_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct iw_cm_id*) ; 

__attribute__((used)) static void FUNC6(struct i40iw_cm_node *cm_node, u32 rem_node)
{
	struct i40iw_timer_entry *close_entry = cm_node->close_entry;
	struct iw_cm_id *cm_id = cm_node->cm_id;
	struct i40iw_qp *iwqp;
	unsigned long flags;

	if (!close_entry)
		return;
	iwqp = (struct i40iw_qp *)close_entry->sqbuf;
	if (iwqp) {
		FUNC3(&iwqp->lock, flags);
		if (iwqp->cm_id) {
			iwqp->hw_tcp_state = I40IW_TCP_STATE_CLOSED;
			iwqp->hw_iwarp_state = I40IW_QP_STATE_ERROR;
			iwqp->last_aeq = I40IW_AE_RESET_SENT;
			iwqp->ibqp_state = IB_QPS_ERR;
			FUNC4(&iwqp->lock, flags);
			FUNC0(iwqp);
		} else {
			FUNC4(&iwqp->lock, flags);
		}
	} else if (rem_node) {
		/* TIME_WAIT state */
		FUNC1(cm_node);
	}
	if (cm_id)
		cm_id->rem_ref(cm_id);
	FUNC2(close_entry);
	cm_node->close_entry = NULL;
}