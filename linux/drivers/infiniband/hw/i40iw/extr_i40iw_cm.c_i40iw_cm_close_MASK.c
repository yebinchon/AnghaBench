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
struct i40iw_cm_node {int state; int /*<<< orphan*/  send_entry; } ;

/* Variables and functions */
 int EINVAL ; 
#define  I40IW_CM_STATE_ACCEPTING 147 
#define  I40IW_CM_STATE_CLOSED 146 
#define  I40IW_CM_STATE_CLOSE_WAIT 145 
#define  I40IW_CM_STATE_CLOSING 144 
#define  I40IW_CM_STATE_ESTABLISHED 143 
#define  I40IW_CM_STATE_FIN_WAIT1 142 
#define  I40IW_CM_STATE_FIN_WAIT2 141 
#define  I40IW_CM_STATE_INITED 140 
#define  I40IW_CM_STATE_LAST_ACK 139 
#define  I40IW_CM_STATE_LISTENER_DESTROYED 138 
#define  I40IW_CM_STATE_LISTENING 137 
#define  I40IW_CM_STATE_MPAREJ_RCVD 136 
#define  I40IW_CM_STATE_MPAREQ_RCVD 135 
#define  I40IW_CM_STATE_MPAREQ_SENT 134 
#define  I40IW_CM_STATE_OFFLOADED 133 
#define  I40IW_CM_STATE_ONE_SIDE_ESTABLISHED 132 
#define  I40IW_CM_STATE_SYN_RCVD 131 
#define  I40IW_CM_STATE_SYN_SENT 130 
#define  I40IW_CM_STATE_TIME_WAIT 129 
#define  I40IW_CM_STATE_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_cm_node*) ; 

__attribute__((used)) static int FUNC5(struct i40iw_cm_node *cm_node)
{
	int ret = 0;

	if (!cm_node)
		return -EINVAL;

	switch (cm_node->state) {
	case I40IW_CM_STATE_SYN_RCVD:
	case I40IW_CM_STATE_SYN_SENT:
	case I40IW_CM_STATE_ONE_SIDE_ESTABLISHED:
	case I40IW_CM_STATE_ESTABLISHED:
	case I40IW_CM_STATE_ACCEPTING:
	case I40IW_CM_STATE_MPAREQ_SENT:
	case I40IW_CM_STATE_MPAREQ_RCVD:
		FUNC0(cm_node);
		FUNC4(cm_node);
		break;
	case I40IW_CM_STATE_CLOSE_WAIT:
		cm_node->state = I40IW_CM_STATE_LAST_ACK;
		FUNC3(cm_node);
		break;
	case I40IW_CM_STATE_FIN_WAIT1:
	case I40IW_CM_STATE_FIN_WAIT2:
	case I40IW_CM_STATE_LAST_ACK:
	case I40IW_CM_STATE_TIME_WAIT:
	case I40IW_CM_STATE_CLOSING:
		ret = -1;
		break;
	case I40IW_CM_STATE_LISTENING:
		FUNC0(cm_node);
		FUNC4(cm_node);
		break;
	case I40IW_CM_STATE_MPAREJ_RCVD:
	case I40IW_CM_STATE_UNKNOWN:
	case I40IW_CM_STATE_INITED:
	case I40IW_CM_STATE_CLOSED:
	case I40IW_CM_STATE_LISTENER_DESTROYED:
		FUNC2(cm_node);
		break;
	case I40IW_CM_STATE_OFFLOADED:
		if (cm_node->send_entry)
			FUNC1("send_entry\n");
		FUNC2(cm_node);
		break;
	}
	return ret;
}