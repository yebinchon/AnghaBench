
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_qp {int ibqp; int * cm_node; } ;
struct i40iw_cm_node {struct i40iw_cm_core* cm_core; scalar_t__ qhash_set; int iwdev; struct i40iw_qp* iwqp; scalar_t__ apbvt_set; int loc_port; TYPE_1__* listener; scalar_t__ close_entry; scalar_t__ accept_pend; int accelerated; int list; int ref_count; } ;
struct i40iw_cm_info {int dummy; } ;
struct i40iw_cm_core {int stats_nodes_destroyed; int ht_lock; } ;
struct TYPE_2__ {int pend_accepts_cnt; } ;


 int I40IW_MANAGE_APBVT_DEL ;
 int I40IW_QHASH_MANAGE_TYPE_DELETE ;
 int I40IW_QHASH_TYPE_TCP_ESTABLISHED ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 int i40iw_dec_refcnt_listen (struct i40iw_cm_core*,TYPE_1__*,int ,int) ;
 int i40iw_get_addr_info (struct i40iw_cm_node*,struct i40iw_cm_info*) ;
 int i40iw_handle_close_entry (struct i40iw_cm_node*,int ) ;
 int i40iw_manage_apbvt (int ,int ,int ) ;
 int i40iw_manage_qhash (int ,struct i40iw_cm_info*,int ,int ,int *,int) ;
 int i40iw_rem_ref (int *) ;
 int kfree (struct i40iw_cm_node*) ;
 int list_del (int *) ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i40iw_rem_ref_cm_node(struct i40iw_cm_node *cm_node)
{
 struct i40iw_cm_core *cm_core = cm_node->cm_core;
 struct i40iw_qp *iwqp;
 struct i40iw_cm_info nfo;
 unsigned long flags;

 spin_lock_irqsave(&cm_node->cm_core->ht_lock, flags);
 if (atomic_dec_return(&cm_node->ref_count)) {
  spin_unlock_irqrestore(&cm_node->cm_core->ht_lock, flags);
  return;
 }
 list_del(&cm_node->list);
 spin_unlock_irqrestore(&cm_node->cm_core->ht_lock, flags);


 if (!cm_node->accelerated && cm_node->accept_pend) {
  pr_err("node destroyed before established\n");
  atomic_dec(&cm_node->listener->pend_accepts_cnt);
 }
 if (cm_node->close_entry)
  i40iw_handle_close_entry(cm_node, 0);
 if (cm_node->listener) {
  i40iw_dec_refcnt_listen(cm_core, cm_node->listener, 0, 1);
 } else {
  if (cm_node->apbvt_set) {
   i40iw_manage_apbvt(cm_node->iwdev,
        cm_node->loc_port,
        I40IW_MANAGE_APBVT_DEL);
   cm_node->apbvt_set = 0;
  }
  i40iw_get_addr_info(cm_node, &nfo);
  if (cm_node->qhash_set) {
   i40iw_manage_qhash(cm_node->iwdev,
        &nfo,
        I40IW_QHASH_TYPE_TCP_ESTABLISHED,
        I40IW_QHASH_MANAGE_TYPE_DELETE,
        ((void*)0),
        0);
   cm_node->qhash_set = 0;
  }
 }

 iwqp = cm_node->iwqp;
 if (iwqp) {
  iwqp->cm_node = ((void*)0);
  i40iw_rem_ref(&iwqp->ibqp);
  cm_node->iwqp = ((void*)0);
 } else if (cm_node->qhash_set) {
  i40iw_get_addr_info(cm_node, &nfo);
  i40iw_manage_qhash(cm_node->iwdev,
       &nfo,
       I40IW_QHASH_TYPE_TCP_ESTABLISHED,
       I40IW_QHASH_MANAGE_TYPE_DELETE,
       ((void*)0),
       0);
  cm_node->qhash_set = 0;
 }

 cm_node->cm_core->stats_nodes_destroyed++;
 kfree(cm_node);
}
