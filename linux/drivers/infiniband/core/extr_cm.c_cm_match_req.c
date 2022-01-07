
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_cm_id {int state; int device; } ;
struct cm_work {TYPE_3__* mad_recv_wc; int port; } ;
struct TYPE_6__ {int remote_id; int local_id; } ;
struct cm_timewait_info {TYPE_2__ work; } ;
struct cm_req_msg {int service_id; } ;
struct cm_id_private {int work_count; struct ib_cm_id id; int refcount; int timewait_info; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_5__ {scalar_t__ mad; } ;
struct TYPE_7__ {TYPE_1__ recv_buf; } ;


 int CM_MSG_RESPONSE_REQ ;
 int IB_CM_REJ_INVALID_SERVICE_ID ;
 int IB_CM_REJ_STALE_CONN ;
 int IB_CM_REQ_RCVD ;
 int atomic_inc (int *) ;
 TYPE_4__ cm ;
 int cm_cleanup_timewait (int ) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_dup_req_handler (struct cm_work*,struct cm_id_private*) ;
 struct cm_id_private* cm_find_listen (int ,int ) ;
 struct cm_id_private* cm_get_id (int ,int ) ;
 struct cm_timewait_info* cm_insert_remote_id (int ) ;
 struct cm_timewait_info* cm_insert_remote_qpn (int ) ;
 int cm_issue_rej (int ,TYPE_3__*,int ,int ,int *,int ) ;
 int ib_send_cm_dreq (struct ib_cm_id*,int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct cm_id_private * cm_match_req(struct cm_work *work,
        struct cm_id_private *cm_id_priv)
{
 struct cm_id_private *listen_cm_id_priv, *cur_cm_id_priv;
 struct cm_timewait_info *timewait_info;
 struct cm_req_msg *req_msg;
 struct ib_cm_id *cm_id;

 req_msg = (struct cm_req_msg *)work->mad_recv_wc->recv_buf.mad;


 spin_lock_irq(&cm.lock);
 timewait_info = cm_insert_remote_id(cm_id_priv->timewait_info);
 if (timewait_info) {
  cur_cm_id_priv = cm_get_id(timewait_info->work.local_id,
        timewait_info->work.remote_id);
  spin_unlock_irq(&cm.lock);
  if (cur_cm_id_priv) {
   cm_dup_req_handler(work, cur_cm_id_priv);
   cm_deref_id(cur_cm_id_priv);
  }
  return ((void*)0);
 }


 timewait_info = cm_insert_remote_qpn(cm_id_priv->timewait_info);
 if (timewait_info) {
  cm_cleanup_timewait(cm_id_priv->timewait_info);
  cur_cm_id_priv = cm_get_id(timewait_info->work.local_id,
        timewait_info->work.remote_id);

  spin_unlock_irq(&cm.lock);
  cm_issue_rej(work->port, work->mad_recv_wc,
        IB_CM_REJ_STALE_CONN, CM_MSG_RESPONSE_REQ,
        ((void*)0), 0);
  if (cur_cm_id_priv) {
   cm_id = &cur_cm_id_priv->id;
   ib_send_cm_dreq(cm_id, ((void*)0), 0);
   cm_deref_id(cur_cm_id_priv);
  }
  return ((void*)0);
 }


 listen_cm_id_priv = cm_find_listen(cm_id_priv->id.device,
        req_msg->service_id);
 if (!listen_cm_id_priv) {
  cm_cleanup_timewait(cm_id_priv->timewait_info);
  spin_unlock_irq(&cm.lock);
  cm_issue_rej(work->port, work->mad_recv_wc,
        IB_CM_REJ_INVALID_SERVICE_ID, CM_MSG_RESPONSE_REQ,
        ((void*)0), 0);
  goto out;
 }
 atomic_inc(&listen_cm_id_priv->refcount);
 atomic_inc(&cm_id_priv->refcount);
 cm_id_priv->id.state = IB_CM_REQ_RCVD;
 atomic_inc(&cm_id_priv->work_count);
 spin_unlock_irq(&cm.lock);
out:
 return listen_cm_id_priv;
}
