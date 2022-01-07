
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_16__ {int info_len; int * apr_info; int ap_status; } ;
struct TYPE_17__ {TYPE_5__ apr_rcvd; } ;
struct TYPE_18__ {int * private_data; TYPE_6__ param; } ;
struct cm_work {int list; TYPE_7__ cm_event; TYPE_4__* mad_recv_wc; TYPE_2__* port; } ;
struct TYPE_11__ {TYPE_9__* port; } ;
struct TYPE_19__ {scalar_t__ state; scalar_t__ lap_state; } ;
struct cm_id_private {int lock; int work_list; int work_count; int * msg; TYPE_10__ av; TYPE_8__ id; } ;
struct cm_apr_msg {int private_data; int info_length; int info; int ap_status; int local_comm_id; int remote_comm_id; } ;
struct TYPE_20__ {int mad_agent; } ;
struct TYPE_14__ {scalar_t__ mad; } ;
struct TYPE_15__ {TYPE_3__ recv_buf; } ;
struct TYPE_13__ {int port_num; TYPE_1__* cm_dev; } ;
struct TYPE_12__ {int ib_device; } ;


 int EINVAL ;
 scalar_t__ IB_CM_ESTABLISHED ;
 scalar_t__ IB_CM_LAP_IDLE ;
 scalar_t__ IB_CM_LAP_SENT ;
 scalar_t__ IB_CM_MRA_LAP_RCVD ;
 int atomic_inc_and_test (int *) ;
 struct cm_id_private* cm_acquire_id (int ,int ) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_process_work (struct cm_id_private*,struct cm_work*) ;
 int ib_cancel_mad (int ,int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ rdma_protocol_roce (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cm_apr_handler(struct cm_work *work)
{
 struct cm_id_private *cm_id_priv;
 struct cm_apr_msg *apr_msg;
 int ret;




 if (rdma_protocol_roce(work->port->cm_dev->ib_device,
          work->port->port_num))
  return -EINVAL;

 apr_msg = (struct cm_apr_msg *)work->mad_recv_wc->recv_buf.mad;
 cm_id_priv = cm_acquire_id(apr_msg->remote_comm_id,
       apr_msg->local_comm_id);
 if (!cm_id_priv)
  return -EINVAL;

 work->cm_event.param.apr_rcvd.ap_status = apr_msg->ap_status;
 work->cm_event.param.apr_rcvd.apr_info = &apr_msg->info;
 work->cm_event.param.apr_rcvd.info_len = apr_msg->info_length;
 work->cm_event.private_data = &apr_msg->private_data;

 spin_lock_irq(&cm_id_priv->lock);
 if (cm_id_priv->id.state != IB_CM_ESTABLISHED ||
     (cm_id_priv->id.lap_state != IB_CM_LAP_SENT &&
      cm_id_priv->id.lap_state != IB_CM_MRA_LAP_RCVD)) {
  spin_unlock_irq(&cm_id_priv->lock);
  goto out;
 }
 cm_id_priv->id.lap_state = IB_CM_LAP_IDLE;
 ib_cancel_mad(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
 cm_id_priv->msg = ((void*)0);

 ret = atomic_inc_and_test(&cm_id_priv->work_count);
 if (!ret)
  list_add_tail(&work->list, &cm_id_priv->work_list);
 spin_unlock_irq(&cm_id_priv->lock);

 if (ret)
  cm_process_work(cm_id_priv, work);
 else
  cm_deref_id(cm_id_priv);
 return 0;
out:
 cm_deref_id(cm_id_priv);
 return -EINVAL;
}
