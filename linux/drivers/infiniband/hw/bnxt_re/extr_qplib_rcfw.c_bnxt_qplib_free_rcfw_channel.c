
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_rcfw {int * pdev; int creq; int cmdq; int crsqe_tbl; int qp_tbl; } ;


 int bnxt_qplib_free_hwq (int *,int *) ;
 int kfree (int ) ;

void bnxt_qplib_free_rcfw_channel(struct bnxt_qplib_rcfw *rcfw)
{
 kfree(rcfw->qp_tbl);
 kfree(rcfw->crsqe_tbl);
 bnxt_qplib_free_hwq(rcfw->pdev, &rcfw->cmdq);
 bnxt_qplib_free_hwq(rcfw->pdev, &rcfw->creq);
 rcfw->pdev = ((void*)0);
}
