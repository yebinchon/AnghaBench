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
struct i40iw_device {int dummy; } ;
struct i40iw_cm_listener {scalar_t__ listener_state; int reused_node; int /*<<< orphan*/  list; int /*<<< orphan*/  backlog; struct i40iw_device* iwdev; struct i40iw_cm_core* cm_core; int /*<<< orphan*/  pend_accepts_cnt; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  ipv4; int /*<<< orphan*/  cm_id; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  child_listen_list; int /*<<< orphan*/  loc_port; int /*<<< orphan*/  loc_addr; } ;
struct i40iw_cm_info {int /*<<< orphan*/  backlog; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  ipv4; int /*<<< orphan*/  cm_id; int /*<<< orphan*/  loc_port; int /*<<< orphan*/  loc_addr; } ;
struct i40iw_cm_core {int /*<<< orphan*/  listen_list_lock; int /*<<< orphan*/  listen_nodes; int /*<<< orphan*/  stats_listen_nodes_created; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ I40IW_CM_LISTENER_ACTIVE_STATE ; 
 int /*<<< orphan*/  I40IW_CM_LISTENER_EITHER_STATE ; 
 int /*<<< orphan*/  I40IW_DEBUG_CM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct i40iw_cm_listener* FUNC4 (struct i40iw_cm_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i40iw_cm_listener* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct i40iw_cm_listener *FUNC10(
					struct i40iw_cm_core *cm_core,
					struct i40iw_device *iwdev,
					struct i40iw_cm_info *cm_info)
{
	struct i40iw_cm_listener *listener;
	unsigned long flags;

	/* cannot have multiple matching listeners */
	listener = FUNC4(cm_core, cm_info->loc_addr,
				       cm_info->loc_port,
				       cm_info->vlan_id,
				       I40IW_CM_LISTENER_EITHER_STATE);
	if (listener &&
	    (listener->listener_state == I40IW_CM_LISTENER_ACTIVE_STATE)) {
		FUNC1(&listener->ref_count);
		FUNC3(cm_core->dev,
			    I40IW_DEBUG_CM,
			    "Not creating listener since it already exists\n");
		return NULL;
	}

	if (!listener) {
		/* create a CM listen node (1/2 node to compare incoming traffic to) */
		listener = FUNC5(sizeof(*listener), GFP_KERNEL);
		if (!listener)
			return NULL;
		cm_core->stats_listen_nodes_created++;
		FUNC7(listener->loc_addr, cm_info->loc_addr, sizeof(listener->loc_addr));
		listener->loc_port = cm_info->loc_port;

		FUNC0(&listener->child_listen_list);

		FUNC2(&listener->ref_count, 1);
	} else {
		listener->reused_node = 1;
	}

	listener->cm_id = cm_info->cm_id;
	listener->ipv4 = cm_info->ipv4;
	listener->vlan_id = cm_info->vlan_id;
	FUNC2(&listener->pend_accepts_cnt, 0);
	listener->cm_core = cm_core;
	listener->iwdev = iwdev;

	listener->backlog = cm_info->backlog;
	listener->listener_state = I40IW_CM_LISTENER_ACTIVE_STATE;

	if (!listener->reused_node) {
		FUNC8(&cm_core->listen_list_lock, flags);
		FUNC6(&listener->list, &cm_core->listen_nodes);
		FUNC9(&cm_core->listen_list_lock, flags);
	}

	return listener;
}