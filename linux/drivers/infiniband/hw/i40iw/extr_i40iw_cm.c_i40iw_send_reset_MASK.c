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
struct i40iw_puda_buf {int dummy; } ;
struct i40iw_cm_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_TIMER_TYPE_SEND ; 
 int SET_ACK ; 
 int SET_RST ; 
 struct i40iw_puda_buf* FUNC0 (struct i40iw_cm_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct i40iw_cm_node*,struct i40iw_puda_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct i40iw_cm_node *cm_node)
{
	struct i40iw_puda_buf *sqbuf;
	int flags = SET_RST | SET_ACK;

	sqbuf = FUNC0(cm_node, NULL, NULL, NULL, flags);
	if (!sqbuf) {
		FUNC1("no sqbuf\n");
		return -1;
	}

	return FUNC2(cm_node, sqbuf, I40IW_TIMER_TYPE_SEND, 0, 1);
}