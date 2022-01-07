
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int s_lock; } ;


 int flush_iowait (struct rvt_qp*) ;
 int hfi1_tid_rdma_flush_wait (struct rvt_qp*) ;
 int lockdep_assert_held (int *) ;

void flush_qp_waiters(struct rvt_qp *qp)
{
 lockdep_assert_held(&qp->s_lock);
 flush_iowait(qp);
 hfi1_tid_rdma_flush_wait(qp);
}
