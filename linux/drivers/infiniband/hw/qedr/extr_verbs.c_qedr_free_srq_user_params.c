
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int umem; int pbl_tbl; int pbl_info; } ;
struct qedr_srq {int prod_umem; TYPE_1__ usrq; int dev; } ;


 int ib_umem_release (int ) ;
 int qedr_free_pbl (int ,int *,int ) ;

__attribute__((used)) static void qedr_free_srq_user_params(struct qedr_srq *srq)
{
 qedr_free_pbl(srq->dev, &srq->usrq.pbl_info, srq->usrq.pbl_tbl);
 ib_umem_release(srq->usrq.umem);
 ib_umem_release(srq->prod_umem);
}
