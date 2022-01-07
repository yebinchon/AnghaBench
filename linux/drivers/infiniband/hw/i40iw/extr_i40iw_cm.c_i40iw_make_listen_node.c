
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_device {int dummy; } ;
struct i40iw_cm_listener {scalar_t__ listener_state; int reused_node; int list; int backlog; struct i40iw_device* iwdev; struct i40iw_cm_core* cm_core; int pend_accepts_cnt; int vlan_id; int ipv4; int cm_id; int ref_count; int child_listen_list; int loc_port; int loc_addr; } ;
struct i40iw_cm_info {int backlog; int vlan_id; int ipv4; int cm_id; int loc_port; int loc_addr; } ;
struct i40iw_cm_core {int listen_list_lock; int listen_nodes; int stats_listen_nodes_created; int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ I40IW_CM_LISTENER_ACTIVE_STATE ;
 int I40IW_CM_LISTENER_EITHER_STATE ;
 int I40IW_DEBUG_CM ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_dec (int *) ;
 int atomic_set (int *,int) ;
 int i40iw_debug (int ,int ,char*) ;
 struct i40iw_cm_listener* i40iw_find_listener (struct i40iw_cm_core*,int ,int ,int ,int ) ;
 struct i40iw_cm_listener* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct i40iw_cm_listener *i40iw_make_listen_node(
     struct i40iw_cm_core *cm_core,
     struct i40iw_device *iwdev,
     struct i40iw_cm_info *cm_info)
{
 struct i40iw_cm_listener *listener;
 unsigned long flags;


 listener = i40iw_find_listener(cm_core, cm_info->loc_addr,
           cm_info->loc_port,
           cm_info->vlan_id,
           I40IW_CM_LISTENER_EITHER_STATE);
 if (listener &&
     (listener->listener_state == I40IW_CM_LISTENER_ACTIVE_STATE)) {
  atomic_dec(&listener->ref_count);
  i40iw_debug(cm_core->dev,
       I40IW_DEBUG_CM,
       "Not creating listener since it already exists\n");
  return ((void*)0);
 }

 if (!listener) {

  listener = kzalloc(sizeof(*listener), GFP_KERNEL);
  if (!listener)
   return ((void*)0);
  cm_core->stats_listen_nodes_created++;
  memcpy(listener->loc_addr, cm_info->loc_addr, sizeof(listener->loc_addr));
  listener->loc_port = cm_info->loc_port;

  INIT_LIST_HEAD(&listener->child_listen_list);

  atomic_set(&listener->ref_count, 1);
 } else {
  listener->reused_node = 1;
 }

 listener->cm_id = cm_info->cm_id;
 listener->ipv4 = cm_info->ipv4;
 listener->vlan_id = cm_info->vlan_id;
 atomic_set(&listener->pend_accepts_cnt, 0);
 listener->cm_core = cm_core;
 listener->iwdev = iwdev;

 listener->backlog = cm_info->backlog;
 listener->listener_state = I40IW_CM_LISTENER_ACTIVE_STATE;

 if (!listener->reused_node) {
  spin_lock_irqsave(&cm_core->listen_list_lock, flags);
  list_add(&listener->list, &cm_core->listen_nodes);
  spin_unlock_irqrestore(&cm_core->listen_list_lock, flags);
 }

 return listener;
}
