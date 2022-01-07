
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisi_qm {TYPE_2__* ops; int ver; TYPE_1__* pdev; } ;
struct TYPE_4__ {int (* hw_error_handle ) (struct hisi_qm*) ;} ;
struct TYPE_3__ {int dev; } ;


 int PCI_ERS_RESULT_NONE ;
 int dev_err (int *,char*,int ) ;
 int stub1 (struct hisi_qm*) ;

int hisi_qm_hw_error_handle(struct hisi_qm *qm)
{
 if (!qm->ops->hw_error_handle) {
  dev_err(&qm->pdev->dev, "QM version %d doesn't support hw error report!\n",
   qm->ver);
  return PCI_ERS_RESULT_NONE;
 }

 return qm->ops->hw_error_handle(qm);
}
