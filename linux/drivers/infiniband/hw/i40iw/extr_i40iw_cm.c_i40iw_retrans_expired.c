
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;} ;
struct i40iw_cm_node {int state; int ref_count; struct iw_cm_id* cm_id; } ;
typedef enum i40iw_cm_node_state { ____Placeholder_i40iw_cm_node_state } i40iw_cm_node_state ;


 int I40IW_CM_EVENT_ABORTED ;
 int I40IW_CM_STATE_CLOSED ;




 int atomic_inc (int *) ;
 int i40iw_create_event (struct i40iw_cm_node*,int ) ;
 int i40iw_rem_ref_cm_node (struct i40iw_cm_node*) ;
 int i40iw_send_reset (struct i40iw_cm_node*) ;
 int stub1 (struct iw_cm_id*) ;

__attribute__((used)) static void i40iw_retrans_expired(struct i40iw_cm_node *cm_node)
{
 struct iw_cm_id *cm_id = cm_node->cm_id;
 enum i40iw_cm_node_state state = cm_node->state;

 cm_node->state = I40IW_CM_STATE_CLOSED;
 switch (state) {
 case 128:
 case 131:
  i40iw_rem_ref_cm_node(cm_node);
  break;
 case 130:
 case 129:
  if (cm_node->cm_id)
   cm_id->rem_ref(cm_id);
  i40iw_send_reset(cm_node);
  break;
 default:
  atomic_inc(&cm_node->ref_count);
  i40iw_send_reset(cm_node);
  i40iw_create_event(cm_node, I40IW_CM_EVENT_ABORTED);
  break;
 }
}
