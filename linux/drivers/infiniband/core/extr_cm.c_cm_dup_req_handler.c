
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_mad_send_buf {scalar_t__ mad; } ;
struct cm_work {int mad_recv_wc; TYPE_3__* port; } ;
struct cm_rej_msg {int dummy; } ;
struct cm_mra_msg {int dummy; } ;
struct TYPE_5__ {int state; } ;
struct cm_id_private {int lock; int private_data_len; int private_data; int service_timeout; TYPE_2__ id; } ;
struct TYPE_6__ {TYPE_1__* counter_group; } ;
struct TYPE_4__ {int * counter; } ;


 int CM_MSG_RESPONSE_REQ ;
 size_t CM_RECV_DUPLICATES ;
 size_t CM_REQ_COUNTER ;

 int IB_CM_REJ_STALE_CONN ;
 int IB_CM_REQ_RCVD ;

 int atomic_long_inc (int *) ;
 int cm_alloc_response_msg (TYPE_3__*,int ,struct ib_mad_send_buf**) ;
 int cm_format_mra (struct cm_mra_msg*,struct cm_id_private*,int ,int ,int ,int ) ;
 int cm_format_rej (struct cm_rej_msg*,struct cm_id_private*,int ,int *,int ,int *,int ) ;
 int cm_free_msg (struct ib_mad_send_buf*) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void cm_dup_req_handler(struct cm_work *work,
          struct cm_id_private *cm_id_priv)
{
 struct ib_mad_send_buf *msg = ((void*)0);
 int ret;

 atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
   counter[CM_REQ_COUNTER]);


 if (cm_id_priv->id.state == IB_CM_REQ_RCVD)
  return;

 ret = cm_alloc_response_msg(work->port, work->mad_recv_wc, &msg);
 if (ret)
  return;

 spin_lock_irq(&cm_id_priv->lock);
 switch (cm_id_priv->id.state) {
 case 129:
  cm_format_mra((struct cm_mra_msg *) msg->mad, cm_id_priv,
         CM_MSG_RESPONSE_REQ, cm_id_priv->service_timeout,
         cm_id_priv->private_data,
         cm_id_priv->private_data_len);
  break;
 case 128:
  cm_format_rej((struct cm_rej_msg *) msg->mad, cm_id_priv,
         IB_CM_REJ_STALE_CONN, ((void*)0), 0, ((void*)0), 0);
  break;
 default:
  goto unlock;
 }
 spin_unlock_irq(&cm_id_priv->lock);

 ret = ib_post_send_mad(msg, ((void*)0));
 if (ret)
  goto free;
 return;

unlock: spin_unlock_irq(&cm_id_priv->lock);
free: cm_free_msg(msg);
}
