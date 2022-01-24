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
struct tcphdr {int /*<<< orphan*/  ack_seq; } ;
struct TYPE_2__ {scalar_t__ loc_seq_num; } ;
struct i40iw_cm_node {TYPE_1__ tcp_cntxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40iw_cm_node*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i40iw_cm_node *cm_node, struct tcphdr *tcph)
{
	int err = 0;

	if (FUNC1(tcph->ack_seq) != cm_node->tcp_cntxt.loc_seq_num) {
		err = 1;
		FUNC0(cm_node, true);
	}
	return err;
}