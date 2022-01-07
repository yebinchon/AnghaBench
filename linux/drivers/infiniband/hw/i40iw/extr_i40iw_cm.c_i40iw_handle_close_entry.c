
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;} ;
struct i40iw_timer_entry {scalar_t__ sqbuf; } ;
struct i40iw_qp {int lock; int ibqp_state; int last_aeq; int hw_iwarp_state; int hw_tcp_state; scalar_t__ cm_id; } ;
struct i40iw_cm_node {struct i40iw_timer_entry* close_entry; struct iw_cm_id* cm_id; } ;


 int I40IW_AE_RESET_SENT ;
 int I40IW_QP_STATE_ERROR ;
 int I40IW_TCP_STATE_CLOSED ;
 int IB_QPS_ERR ;
 int i40iw_cm_disconn (struct i40iw_qp*) ;
 int i40iw_rem_ref_cm_node (struct i40iw_cm_node*) ;
 int kfree (struct i40iw_timer_entry*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct iw_cm_id*) ;

__attribute__((used)) static void i40iw_handle_close_entry(struct i40iw_cm_node *cm_node, u32 rem_node)
{
 struct i40iw_timer_entry *close_entry = cm_node->close_entry;
 struct iw_cm_id *cm_id = cm_node->cm_id;
 struct i40iw_qp *iwqp;
 unsigned long flags;

 if (!close_entry)
  return;
 iwqp = (struct i40iw_qp *)close_entry->sqbuf;
 if (iwqp) {
  spin_lock_irqsave(&iwqp->lock, flags);
  if (iwqp->cm_id) {
   iwqp->hw_tcp_state = I40IW_TCP_STATE_CLOSED;
   iwqp->hw_iwarp_state = I40IW_QP_STATE_ERROR;
   iwqp->last_aeq = I40IW_AE_RESET_SENT;
   iwqp->ibqp_state = IB_QPS_ERR;
   spin_unlock_irqrestore(&iwqp->lock, flags);
   i40iw_cm_disconn(iwqp);
  } else {
   spin_unlock_irqrestore(&iwqp->lock, flags);
  }
 } else if (rem_node) {

  i40iw_rem_ref_cm_node(cm_node);
 }
 if (cm_id)
  cm_id->rem_ref(cm_id);
 kfree(close_entry);
 cm_node->close_entry = ((void*)0);
}
