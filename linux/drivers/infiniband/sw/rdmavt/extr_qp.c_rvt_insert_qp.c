
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int qp_num; } ;
struct rvt_qp {int port_num; int next; TYPE_1__ ibqp; } ;
struct rvt_ibport {int * qp; } ;
struct rvt_dev_info {TYPE_2__* qp_dev; struct rvt_ibport** ports; } ;
struct TYPE_4__ {int qpt_lock; int * qp_table; int qp_table_bits; } ;


 size_t hash_32 (size_t,int ) ;
 int rcu_assign_pointer (int ,struct rvt_qp*) ;
 int rvt_get_qp (struct rvt_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_rvt_qpinsert (struct rvt_qp*,size_t) ;

__attribute__((used)) static void rvt_insert_qp(struct rvt_dev_info *rdi, struct rvt_qp *qp)
{
 struct rvt_ibport *rvp = rdi->ports[qp->port_num - 1];
 unsigned long flags;

 rvt_get_qp(qp);
 spin_lock_irqsave(&rdi->qp_dev->qpt_lock, flags);

 if (qp->ibqp.qp_num <= 1) {
  rcu_assign_pointer(rvp->qp[qp->ibqp.qp_num], qp);
 } else {
  u32 n = hash_32(qp->ibqp.qp_num, rdi->qp_dev->qp_table_bits);

  qp->next = rdi->qp_dev->qp_table[n];
  rcu_assign_pointer(rdi->qp_dev->qp_table[n], qp);
  trace_rvt_qpinsert(qp, n);
 }

 spin_unlock_irqrestore(&rdi->qp_dev->qpt_lock, flags);
}
