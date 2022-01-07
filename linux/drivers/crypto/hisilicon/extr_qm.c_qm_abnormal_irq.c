
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hisi_qm_hw_error {int int_msk; scalar_t__ msg; } ;
struct hisi_qm {int msi_mask; scalar_t__ io_base; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;


 int IRQ_HANDLED ;
 scalar_t__ QM_ABNORMAL_INT_SOURCE ;
 scalar_t__ QM_ABNORMAL_INT_STATUS ;
 int dev_err (struct device*,char*,scalar_t__,int) ;
 struct hisi_qm_hw_error* qm_hw_error ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t qm_abnormal_irq(int irq, void *data)
{
 const struct hisi_qm_hw_error *err = qm_hw_error;
 struct hisi_qm *qm = data;
 struct device *dev = &qm->pdev->dev;
 u32 error_status, tmp;


 tmp = readl(qm->io_base + QM_ABNORMAL_INT_STATUS);
 error_status = qm->msi_mask & tmp;

 while (err->msg) {
  if (err->int_msk & error_status)
   dev_err(dev, "%s [error status=0x%x] found\n",
    err->msg, err->int_msk);

  err++;
 }


 writel(error_status, qm->io_base + QM_ABNORMAL_INT_SOURCE);

 return IRQ_HANDLED;
}
