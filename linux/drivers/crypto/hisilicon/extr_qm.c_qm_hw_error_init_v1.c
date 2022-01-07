
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hisi_qm {scalar_t__ io_base; int ver; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ QM_ABNORMAL_INT_MASK ;
 int QM_ABNORMAL_INT_MASK_VALUE ;
 int dev_info (int *,char*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qm_hw_error_init_v1(struct hisi_qm *qm, u32 ce, u32 nfe, u32 fe,
    u32 msi)
{
 dev_info(&qm->pdev->dev,
   "QM v%d does not support hw error handle\n", qm->ver);

 writel(QM_ABNORMAL_INT_MASK_VALUE, qm->io_base + QM_ABNORMAL_INT_MASK);
}
