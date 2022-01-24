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
struct iw_cm_id {struct i40iw_qp* provider_data; } ;
struct i40iw_qp {int /*<<< orphan*/ * cm_id; } ;
struct i40iw_cm_node {struct iw_cm_id* cm_id; int /*<<< orphan*/  dev; } ;
struct i40iw_cm_event {struct i40iw_cm_node* cm_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  I40IW_DEBUG_CM ; 
 int /*<<< orphan*/  IW_CM_EVENT_CLOSE ; 
 int /*<<< orphan*/  IW_CM_EVENT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct i40iw_cm_node*,struct iw_cm_id*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_cm_node*,struct iw_cm_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i40iw_cm_event *event)
{
	struct i40iw_cm_node *cm_node = event->cm_node;
	struct iw_cm_id   *cm_id = cm_node->cm_id;
	struct i40iw_qp *iwqp;

	if (!cm_id)
		return;

	iwqp = cm_id->provider_data;
	if (!iwqp)
		return;

	FUNC0(cm_node->dev,
		    I40IW_DEBUG_CM,
		    "reset event %p - cm_id = %p\n",
		     event->cm_node, cm_id);
	iwqp->cm_id = NULL;

	FUNC1(cm_node, cm_node->cm_id, IW_CM_EVENT_DISCONNECT, -ECONNRESET);
	FUNC1(cm_node, cm_node->cm_id, IW_CM_EVENT_CLOSE, 0);
}