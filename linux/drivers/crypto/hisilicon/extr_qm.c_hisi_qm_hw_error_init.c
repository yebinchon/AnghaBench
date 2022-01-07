
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hisi_qm {TYPE_2__* ops; int ver; TYPE_1__* pdev; } ;
struct TYPE_4__ {int (* hw_error_init ) (struct hisi_qm*,int ,int ,int ,int ) ;} ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int stub1 (struct hisi_qm*,int ,int ,int ,int ) ;

void hisi_qm_hw_error_init(struct hisi_qm *qm, u32 ce, u32 nfe, u32 fe,
      u32 msi)
{
 if (!qm->ops->hw_error_init) {
  dev_err(&qm->pdev->dev, "QM version %d doesn't support hw error handling!\n",
   qm->ver);
  return;
 }

 qm->ops->hw_error_init(qm, ce, nfe, fe, msi);
}
