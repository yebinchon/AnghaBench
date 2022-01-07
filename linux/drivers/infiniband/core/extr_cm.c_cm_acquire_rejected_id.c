
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int local_id; } ;
struct cm_timewait_info {TYPE_1__ work; } ;
struct cm_rej_msg {scalar_t__ local_comm_id; int remote_comm_id; scalar_t__ ari; int reason; } ;
struct TYPE_5__ {scalar_t__ remote_id; } ;
struct cm_id_private {int refcount; TYPE_2__ id; } ;
typedef int __be64 ;
typedef scalar_t__ __be32 ;
struct TYPE_6__ {int lock; int local_id_table; } ;


 scalar_t__ CM_MSG_RESPONSE_REQ ;
 scalar_t__ IB_CM_REJ_TIMEOUT ;
 scalar_t__ __be16_to_cpu (int ) ;
 int atomic_inc (int *) ;
 TYPE_3__ cm ;
 struct cm_id_private* cm_acquire_id (int ,scalar_t__) ;
 struct cm_timewait_info* cm_find_remote_id (int ,scalar_t__) ;
 int cm_local_id (int ) ;
 scalar_t__ cm_rej_get_msg_rejected (struct cm_rej_msg*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct cm_id_private* xa_load (int *,int ) ;

__attribute__((used)) static struct cm_id_private * cm_acquire_rejected_id(struct cm_rej_msg *rej_msg)
{
 struct cm_timewait_info *timewait_info;
 struct cm_id_private *cm_id_priv;
 __be32 remote_id;

 remote_id = rej_msg->local_comm_id;

 if (__be16_to_cpu(rej_msg->reason) == IB_CM_REJ_TIMEOUT) {
  spin_lock_irq(&cm.lock);
  timewait_info = cm_find_remote_id( *((__be64 *) rej_msg->ari),
        remote_id);
  if (!timewait_info) {
   spin_unlock_irq(&cm.lock);
   return ((void*)0);
  }
  cm_id_priv = xa_load(&cm.local_id_table,
    cm_local_id(timewait_info->work.local_id));
  if (cm_id_priv) {
   if (cm_id_priv->id.remote_id == remote_id)
    atomic_inc(&cm_id_priv->refcount);
   else
    cm_id_priv = ((void*)0);
  }
  spin_unlock_irq(&cm.lock);
 } else if (cm_rej_get_msg_rejected(rej_msg) == CM_MSG_RESPONSE_REQ)
  cm_id_priv = cm_acquire_id(rej_msg->remote_comm_id, 0);
 else
  cm_id_priv = cm_acquire_id(rej_msg->remote_comm_id, remote_id);

 return cm_id_priv;
}
