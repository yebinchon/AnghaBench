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
struct cm_mra_msg {int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  remote_comm_id; } ;
struct cm_id_private {int dummy; } ;

/* Variables and functions */
#define  CM_MSG_RESPONSE_OTHER 130 
#define  CM_MSG_RESPONSE_REP 129 
#define  CM_MSG_RESPONSE_REQ 128 
 struct cm_id_private* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cm_mra_msg*) ; 

__attribute__((used)) static struct cm_id_private * FUNC2(struct cm_mra_msg *mra_msg)
{
	switch (FUNC1(mra_msg)) {
	case CM_MSG_RESPONSE_REQ:
		return FUNC0(mra_msg->remote_comm_id, 0);
	case CM_MSG_RESPONSE_REP:
	case CM_MSG_RESPONSE_OTHER:
		return FUNC0(mra_msg->remote_comm_id,
				     mra_msg->local_comm_id);
	default:
		return NULL;
	}
}