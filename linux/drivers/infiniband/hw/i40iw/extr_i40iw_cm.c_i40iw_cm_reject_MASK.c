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
typedef  int /*<<< orphan*/  u8 ;
struct iw_cm_id {int /*<<< orphan*/  (* rem_ref ) (struct iw_cm_id*) ;int /*<<< orphan*/  (* add_ref ) (struct iw_cm_id*) ;} ;
struct TYPE_2__ {scalar_t__ client; } ;
struct i40iw_cm_node {scalar_t__ state; struct iw_cm_id* cm_id; int /*<<< orphan*/  passive_state; TYPE_1__ tcp_cntxt; struct i40iw_cm_node* loopbackpartner; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
 void* I40IW_CM_STATE_CLOSED ; 
 scalar_t__ I40IW_CM_STATE_CLOSING ; 
 scalar_t__ I40IW_CM_STATE_LISTENER_DESTROYED ; 
 int I40IW_SEND_RESET_EVENT ; 
 int /*<<< orphan*/  IW_CM_EVENT_CONNECT_REPLY ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_cm_node*) ; 
 int FUNC4 (struct i40iw_cm_node*,struct iw_cm_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i40iw_cm_node*,void const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i40iw_cm_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct iw_cm_id*) ; 
 int /*<<< orphan*/  FUNC8 (struct iw_cm_id*) ; 

__attribute__((used)) static int FUNC9(struct i40iw_cm_node *cm_node, const void *pdata, u8 plen)
{
	int ret = 0;
	int err;
	int passive_state;
	struct iw_cm_id *cm_id = cm_node->cm_id;
	struct i40iw_cm_node *loopback = cm_node->loopbackpartner;

	if (cm_node->tcp_cntxt.client)
		return ret;
	FUNC1(cm_node);

	if (!loopback) {
		passive_state = FUNC0(1, &cm_node->passive_state);
		if (passive_state == I40IW_SEND_RESET_EVENT) {
			cm_node->state = I40IW_CM_STATE_CLOSED;
			FUNC3(cm_node);
		} else {
			if (cm_node->state == I40IW_CM_STATE_LISTENER_DESTROYED) {
				FUNC3(cm_node);
			} else {
				ret = FUNC5(cm_node, pdata, plen);
				if (ret) {
					cm_node->state = I40IW_CM_STATE_CLOSED;
					err = FUNC6(cm_node);
					if (err)
						FUNC2("send reset failed\n");
				} else {
					cm_id->add_ref(cm_id);
				}
			}
		}
	} else {
		cm_node->cm_id = NULL;
		if (cm_node->state == I40IW_CM_STATE_LISTENER_DESTROYED) {
			FUNC3(cm_node);
			FUNC3(loopback);
		} else {
			ret = FUNC4(loopback,
						  loopback->cm_id,
						  IW_CM_EVENT_CONNECT_REPLY,
						  -ECONNREFUSED);
			FUNC3(cm_node);
			loopback->state = I40IW_CM_STATE_CLOSING;

			cm_id = loopback->cm_id;
			FUNC3(loopback);
			cm_id->rem_ref(cm_id);
		}
	}

	return ret;
}