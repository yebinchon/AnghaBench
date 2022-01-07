
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_id {struct i40iw_qp* provider_data; } ;
struct i40iw_qp {int * cm_id; } ;
struct i40iw_cm_node {struct iw_cm_id* cm_id; int dev; } ;
struct i40iw_cm_event {struct i40iw_cm_node* cm_node; } ;


 int ECONNRESET ;
 int I40IW_DEBUG_CM ;
 int IW_CM_EVENT_CLOSE ;
 int IW_CM_EVENT_DISCONNECT ;
 int i40iw_debug (int ,int ,char*,struct i40iw_cm_node*,struct iw_cm_id*) ;
 int i40iw_send_cm_event (struct i40iw_cm_node*,struct iw_cm_id*,int ,int ) ;

__attribute__((used)) static void i40iw_cm_event_reset(struct i40iw_cm_event *event)
{
 struct i40iw_cm_node *cm_node = event->cm_node;
 struct iw_cm_id *cm_id = cm_node->cm_id;
 struct i40iw_qp *iwqp;

 if (!cm_id)
  return;

 iwqp = cm_id->provider_data;
 if (!iwqp)
  return;

 i40iw_debug(cm_node->dev,
      I40IW_DEBUG_CM,
      "reset event %p - cm_id = %p\n",
       event->cm_node, cm_id);
 iwqp->cm_id = ((void*)0);

 i40iw_send_cm_event(cm_node, cm_node->cm_id, IW_CM_EVENT_DISCONNECT, -ECONNRESET);
 i40iw_send_cm_event(cm_node, cm_node->cm_id, IW_CM_EVENT_CLOSE, 0);
}
