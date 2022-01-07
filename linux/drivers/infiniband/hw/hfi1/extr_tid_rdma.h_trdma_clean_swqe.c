
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_swqe {int priv; } ;
struct rvt_qp {int dummy; } ;


 int __trdma_clean_swqe (struct rvt_qp*,struct rvt_swqe*) ;

__attribute__((used)) static inline void trdma_clean_swqe(struct rvt_qp *qp, struct rvt_swqe *wqe)
{
 if (!wqe->priv)
  return;
 __trdma_clean_swqe(qp, wqe);
}
