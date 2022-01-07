
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rkey; } ;
struct siw_wqe {TYPE_1__ sqe; } ;
struct siw_qp {int pd; } ;


 int EINVAL ;


 int siw_fastreg_mr (int ,TYPE_1__*) ;
 int siw_invalidate_stag (int ,int ) ;
 int tx_type (struct siw_wqe*) ;

__attribute__((used)) static int siw_qp_sq_proc_local(struct siw_qp *qp, struct siw_wqe *wqe)
{
 int rv;

 switch (tx_type(wqe)) {
 case 128:
  rv = siw_fastreg_mr(qp->pd, &wqe->sqe);
  break;

 case 129:
  rv = siw_invalidate_stag(qp->pd, wqe->sqe.rkey);
  break;

 default:
  rv = -EINVAL;
 }
 return rv;
}
