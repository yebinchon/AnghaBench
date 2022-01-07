
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_edma_engine {scalar_t__ txirq; scalar_t__ errirq; } ;


 int dev_err (int *,char*) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,char*,struct fsl_edma_engine*) ;
 int fsl_edma_err_handler ;
 int fsl_edma_irq_handler ;
 int fsl_edma_tx_handler ;
 void* platform_get_irq_byname (struct platform_device*,char*) ;

__attribute__((used)) static int
fsl_edma_irq_init(struct platform_device *pdev, struct fsl_edma_engine *fsl_edma)
{
 int ret;

 fsl_edma->txirq = platform_get_irq_byname(pdev, "edma-tx");
 if (fsl_edma->txirq < 0)
  return fsl_edma->txirq;

 fsl_edma->errirq = platform_get_irq_byname(pdev, "edma-err");
 if (fsl_edma->errirq < 0)
  return fsl_edma->errirq;

 if (fsl_edma->txirq == fsl_edma->errirq) {
  ret = devm_request_irq(&pdev->dev, fsl_edma->txirq,
    fsl_edma_irq_handler, 0, "eDMA", fsl_edma);
  if (ret) {
   dev_err(&pdev->dev, "Can't register eDMA IRQ.\n");
   return ret;
  }
 } else {
  ret = devm_request_irq(&pdev->dev, fsl_edma->txirq,
    fsl_edma_tx_handler, 0, "eDMA tx", fsl_edma);
  if (ret) {
   dev_err(&pdev->dev, "Can't register eDMA tx IRQ.\n");
   return ret;
  }

  ret = devm_request_irq(&pdev->dev, fsl_edma->errirq,
    fsl_edma_err_handler, 0, "eDMA err", fsl_edma);
  if (ret) {
   dev_err(&pdev->dev, "Can't register eDMA err IRQ.\n");
   return ret;
  }
 }

 return 0;
}
