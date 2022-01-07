
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;struct i40iw_qp* provider_data; } ;
struct i40iw_qp {int * cm_id; int iwdev; } ;
struct i40iw_cm_event {TYPE_1__* cm_node; } ;
struct TYPE_3__ {struct iw_cm_id* cm_id; } ;


 int ECONNRESET ;
 int IW_CM_EVENT_CONNECT_REPLY ;
 int i40iw_rem_ref_cm_node (TYPE_1__*) ;
 int i40iw_send_cm_event (TYPE_1__*,struct iw_cm_id*,int ,int ) ;
 int stub1 (struct iw_cm_id*) ;

__attribute__((used)) static void i40iw_event_connect_error(struct i40iw_cm_event *event)
{
 struct i40iw_qp *iwqp;
 struct iw_cm_id *cm_id;

 cm_id = event->cm_node->cm_id;
 if (!cm_id)
  return;

 iwqp = cm_id->provider_data;

 if (!iwqp || !iwqp->iwdev)
  return;

 iwqp->cm_id = ((void*)0);
 cm_id->provider_data = ((void*)0);
 i40iw_send_cm_event(event->cm_node, cm_id,
       IW_CM_EVENT_CONNECT_REPLY,
       -ECONNRESET);
 cm_id->rem_ref(cm_id);
 i40iw_rem_ref_cm_node(event->cm_node);
}
