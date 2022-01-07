
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rvt_swqe {int dummy; } ;
struct rvt_qp {scalar_t__ s_last; scalar_t__ s_head; scalar_t__ s_size; scalar_t__ s_rdma_mr; } ;


 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,scalar_t__) ;
 scalar_t__ rvt_mr_has_lkey (scalar_t__,scalar_t__) ;
 scalar_t__ rvt_swqe_has_lkey (struct rvt_swqe*,scalar_t__) ;

__attribute__((used)) static bool rvt_qp_sends_has_lkey(struct rvt_qp *qp, u32 lkey)
{
 u32 s_last = qp->s_last;

 while (s_last != qp->s_head) {
  struct rvt_swqe *wqe = rvt_get_swqe_ptr(qp, s_last);

  if (rvt_swqe_has_lkey(wqe, lkey))
   return 1;

  if (++s_last >= qp->s_size)
   s_last = 0;
 }
 if (qp->s_rdma_mr)
  if (rvt_mr_has_lkey(qp->s_rdma_mr, lkey))
   return 1;
 return 0;
}
