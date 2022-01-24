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
struct i40iw_puda_buf {int dummy; } ;
struct i40iw_cm_node {int state; int mpa_frame_rev; TYPE_1__* cm_id; int /*<<< orphan*/  passive_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rem_ref ) (TYPE_1__*) ;} ;

/* Variables and functions */
#define  I40IW_CM_STATE_CLOSED 141 
#define  I40IW_CM_STATE_ESTABLISHED 140 
#define  I40IW_CM_STATE_FIN_WAIT1 139 
#define  I40IW_CM_STATE_FIN_WAIT2 138 
#define  I40IW_CM_STATE_LAST_ACK 137 
#define  I40IW_CM_STATE_LISTENING 136 
#define  I40IW_CM_STATE_MPAREQ_RCVD 135 
#define  I40IW_CM_STATE_MPAREQ_SENT 134 
#define  I40IW_CM_STATE_OFFLOADED 133 
#define  I40IW_CM_STATE_SYN_RCVD 132 
#define  I40IW_CM_STATE_SYN_SENT 131 
#define  I40IW_CM_STATE_TIME_WAIT 130 
#define  IETF_MPA_V1 129 
#define  IETF_MPA_V2 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_cm_node*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_cm_node*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40iw_cm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(struct i40iw_cm_node *cm_node,
				 struct i40iw_puda_buf *rbuf)
{
	FUNC2(cm_node);
	switch (cm_node->state) {
	case I40IW_CM_STATE_SYN_SENT:
	case I40IW_CM_STATE_MPAREQ_SENT:
		switch (cm_node->mpa_frame_rev) {
		case IETF_MPA_V2:
			cm_node->mpa_frame_rev = IETF_MPA_V1;
			/* send a syn and goto syn sent state */
			cm_node->state = I40IW_CM_STATE_SYN_SENT;
			if (FUNC6(cm_node, 0))
				FUNC1(cm_node, false);
			break;
		case IETF_MPA_V1:
		default:
			FUNC1(cm_node, false);
			break;
		}
		break;
	case I40IW_CM_STATE_MPAREQ_RCVD:
		FUNC0(1, &cm_node->passive_state);
		break;
	case I40IW_CM_STATE_ESTABLISHED:
	case I40IW_CM_STATE_SYN_RCVD:
	case I40IW_CM_STATE_LISTENING:
		FUNC4("Bad state state = %d\n", cm_node->state);
		FUNC3(cm_node, false);
		break;
	case I40IW_CM_STATE_OFFLOADED:
		FUNC1(cm_node, false);
		break;
	case I40IW_CM_STATE_CLOSED:
		break;
	case I40IW_CM_STATE_FIN_WAIT2:
	case I40IW_CM_STATE_FIN_WAIT1:
	case I40IW_CM_STATE_LAST_ACK:
		cm_node->cm_id->rem_ref(cm_node->cm_id);
		/* fall through */
	case I40IW_CM_STATE_TIME_WAIT:
		cm_node->state = I40IW_CM_STATE_CLOSED;
		FUNC5(cm_node);
		break;
	default:
		break;
	}
}