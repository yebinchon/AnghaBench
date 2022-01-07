
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_swqe {int dummy; } ;
struct rvt_qp {int dummy; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;


 int rvt_send_complete (struct rvt_qp*,struct rvt_swqe*,int) ;
 int trdma_clean_swqe (struct rvt_qp*,struct rvt_swqe*) ;

__attribute__((used)) static inline void hfi1_trdma_send_complete(struct rvt_qp *qp,
         struct rvt_swqe *wqe,
         enum ib_wc_status status)
{
 trdma_clean_swqe(qp, wqe);
 rvt_send_complete(qp, wqe, status);
}
