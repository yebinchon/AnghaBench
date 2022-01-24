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
typedef  scalar_t__ u32 ;
struct tcphdr {int /*<<< orphan*/  ack_seq; int /*<<< orphan*/  seq; } ;
struct TYPE_2__ {scalar_t__ loc_seq_num; scalar_t__ rcv_nxt; scalar_t__ rcv_wnd; } ;
struct i40iw_cm_node {TYPE_1__ tcp_cntxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i40iw_cm_node *cm_node, struct tcphdr *tcph)
{
	int err = 0;
	u32 seq;
	u32 ack_seq;
	u32 loc_seq_num = cm_node->tcp_cntxt.loc_seq_num;
	u32 rcv_nxt = cm_node->tcp_cntxt.rcv_nxt;
	u32 rcv_wnd;

	seq = FUNC3(tcph->seq);
	ack_seq = FUNC3(tcph->ack_seq);
	rcv_wnd = cm_node->tcp_cntxt.rcv_wnd;
	if (ack_seq != loc_seq_num)
		err = -1;
	else if (!FUNC0(seq, rcv_nxt, (rcv_nxt + rcv_wnd)))
		err = -1;
	if (err) {
		FUNC2("seq number\n");
		FUNC1(cm_node);
	}
	return err;
}