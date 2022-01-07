
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rvt_swqe {int dummy; } ;
struct TYPE_3__ {int device; } ;
struct rvt_qp {scalar_t__ s_last; scalar_t__ s_head; scalar_t__ s_size; struct rvt_ack_entry* s_ack_queue; int * s_rdma_mr; int r_sge; int s_rdma_read_sge; int r_aflags; TYPE_1__ ibqp; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_4__ {int * mr; } ;
struct rvt_ack_entry {TYPE_2__ rdma_sge; } ;


 int RVT_R_REWIND_SGE ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,scalar_t__) ;
 unsigned int rvt_max_atomic (struct rvt_dev_info*) ;
 int rvt_put_mr (int *) ;
 int rvt_put_qp_swqe (struct rvt_qp*,struct rvt_swqe*) ;
 int rvt_put_ss (int *) ;
 int smp_wmb () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void rvt_clear_mr_refs(struct rvt_qp *qp, int clr_sends)
{
 unsigned n;
 struct rvt_dev_info *rdi = ib_to_rvt(qp->ibqp.device);

 if (test_and_clear_bit(RVT_R_REWIND_SGE, &qp->r_aflags))
  rvt_put_ss(&qp->s_rdma_read_sge);

 rvt_put_ss(&qp->r_sge);

 if (clr_sends) {
  while (qp->s_last != qp->s_head) {
   struct rvt_swqe *wqe = rvt_get_swqe_ptr(qp, qp->s_last);

   rvt_put_qp_swqe(qp, wqe);
   if (++qp->s_last >= qp->s_size)
    qp->s_last = 0;
   smp_wmb();
  }
  if (qp->s_rdma_mr) {
   rvt_put_mr(qp->s_rdma_mr);
   qp->s_rdma_mr = ((void*)0);
  }
 }

 for (n = 0; qp->s_ack_queue && n < rvt_max_atomic(rdi); n++) {
  struct rvt_ack_entry *e = &qp->s_ack_queue[n];

  if (e->rdma_sge.mr) {
   rvt_put_mr(e->rdma_sge.mr);
   e->rdma_sge.mr = ((void*)0);
  }
 }
}
