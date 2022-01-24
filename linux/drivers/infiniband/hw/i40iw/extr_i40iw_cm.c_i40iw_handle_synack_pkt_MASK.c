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
typedef  void* u32 ;
struct tcphdr {int doff; int /*<<< orphan*/  ack_seq; int /*<<< orphan*/  seq; } ;
struct i40iw_puda_buf {scalar_t__ tcph; } ;
struct TYPE_2__ {void* loc_seq_num; int /*<<< orphan*/  rcv_nxt; void* rem_ack_num; } ;
struct i40iw_cm_node {int state; int /*<<< orphan*/  ref_count; TYPE_1__ tcp_cntxt; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  I40IW_CM_STATE_CLOSED 139 
#define  I40IW_CM_STATE_CLOSING 138 
#define  I40IW_CM_STATE_ESTABLISHED 137 
#define  I40IW_CM_STATE_FIN_WAIT1 136 
#define  I40IW_CM_STATE_FIN_WAIT2 135 
#define  I40IW_CM_STATE_LAST_ACK 134 
#define  I40IW_CM_STATE_LISTENING 133 
#define  I40IW_CM_STATE_MPAREQ_RCVD 132 
#define  I40IW_CM_STATE_MPAREQ_SENT 131 
#define  I40IW_CM_STATE_OFFLOADED 130 
#define  I40IW_CM_STATE_SYN_SENT 129 
#define  I40IW_CM_STATE_UNKNOWN 128 
 int /*<<< orphan*/  I40IW_DEBUG_CM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_cm_node*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct i40iw_cm_node*) ; 
 int FUNC4 (struct i40iw_cm_node*,struct tcphdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_cm_node*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40iw_cm_node*) ; 
 int FUNC8 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct i40iw_cm_node*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct i40iw_cm_node *cm_node,
				    struct i40iw_puda_buf *rbuf)
{
	struct tcphdr *tcph = (struct tcphdr *)rbuf->tcph;
	int ret;
	u32 inc_sequence;
	int optionsize;

	optionsize = (tcph->doff << 2) - sizeof(struct tcphdr);
	inc_sequence = FUNC10(tcph->seq);
	switch (cm_node->state) {
	case I40IW_CM_STATE_SYN_SENT:
		FUNC2(cm_node);
		/* active open */
		if (FUNC1(cm_node, tcph)) {
			FUNC6("check syn fail\n");
			return;
		}
		cm_node->tcp_cntxt.rem_ack_num = FUNC10(tcph->ack_seq);
		/* setup options */
		ret = FUNC4(cm_node, tcph, optionsize, 0);
		if (ret) {
			FUNC3(cm_node->dev,
				    I40IW_DEBUG_CM,
				    "cm_node=%p tcp_options failed\n",
				    cm_node);
			break;
		}
		FUNC2(cm_node);
		cm_node->tcp_cntxt.rcv_nxt = inc_sequence + 1;
		FUNC7(cm_node);	/* ACK  for the syn_ack */
		ret = FUNC8(cm_node);
		if (ret) {
			FUNC3(cm_node->dev,
				    I40IW_DEBUG_CM,
				    "cm_node=%p i40iw_send_mpa_request failed\n",
				    cm_node);
			break;
		}
		cm_node->state = I40IW_CM_STATE_MPAREQ_SENT;
		break;
	case I40IW_CM_STATE_MPAREQ_RCVD:
		FUNC5(cm_node, true);
		break;
	case I40IW_CM_STATE_LISTENING:
		cm_node->tcp_cntxt.loc_seq_num = FUNC10(tcph->ack_seq);
		FUNC2(cm_node);
		cm_node->state = I40IW_CM_STATE_CLOSED;
		FUNC9(cm_node);
		break;
	case I40IW_CM_STATE_CLOSED:
		cm_node->tcp_cntxt.loc_seq_num = FUNC10(tcph->ack_seq);
		FUNC2(cm_node);
		FUNC0(&cm_node->ref_count);
		FUNC9(cm_node);
		break;
	case I40IW_CM_STATE_ESTABLISHED:
	case I40IW_CM_STATE_FIN_WAIT1:
	case I40IW_CM_STATE_FIN_WAIT2:
	case I40IW_CM_STATE_LAST_ACK:
	case I40IW_CM_STATE_OFFLOADED:
	case I40IW_CM_STATE_CLOSING:
	case I40IW_CM_STATE_UNKNOWN:
	case I40IW_CM_STATE_MPAREQ_SENT:
	default:
		break;
	}
}