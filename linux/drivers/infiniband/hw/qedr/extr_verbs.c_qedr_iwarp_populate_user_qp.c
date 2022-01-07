
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pbl_info; TYPE_3__* pbl_tbl; int umem; } ;
struct TYPE_4__ {int pbl_info; TYPE_3__* pbl_tbl; int umem; } ;
struct qedr_qp {TYPE_2__ urq; int srq; TYPE_1__ usq; } ;
struct qedr_dev {int dummy; } ;
struct qed_rdma_create_qp_out_params {int rq_pbl_phys; int rq_pbl_virt; int sq_pbl_phys; int sq_pbl_virt; } ;
struct TYPE_6__ {int pa; int va; } ;


 int FW_PAGE_SHIFT ;
 int qedr_populate_pbls (struct qedr_dev*,int ,TYPE_3__*,int *,int ) ;

__attribute__((used)) static inline void
qedr_iwarp_populate_user_qp(struct qedr_dev *dev,
       struct qedr_qp *qp,
       struct qed_rdma_create_qp_out_params *out_params)
{
 qp->usq.pbl_tbl->va = out_params->sq_pbl_virt;
 qp->usq.pbl_tbl->pa = out_params->sq_pbl_phys;

 qedr_populate_pbls(dev, qp->usq.umem, qp->usq.pbl_tbl,
      &qp->usq.pbl_info, FW_PAGE_SHIFT);
 if (!qp->srq) {
  qp->urq.pbl_tbl->va = out_params->rq_pbl_virt;
  qp->urq.pbl_tbl->pa = out_params->rq_pbl_phys;
 }

 qedr_populate_pbls(dev, qp->urq.umem, qp->urq.pbl_tbl,
      &qp->urq.pbl_info, FW_PAGE_SHIFT);
}
