
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_edma_engine {scalar_t__ txirq; scalar_t__ errirq; } ;


 int devm_free_irq (int *,scalar_t__,struct fsl_edma_engine*) ;

__attribute__((used)) static void fsl_edma_irq_exit(
  struct platform_device *pdev, struct fsl_edma_engine *fsl_edma)
{
 if (fsl_edma->txirq == fsl_edma->errirq) {
  devm_free_irq(&pdev->dev, fsl_edma->txirq, fsl_edma);
 } else {
  devm_free_irq(&pdev->dev, fsl_edma->txirq, fsl_edma);
  devm_free_irq(&pdev->dev, fsl_edma->errirq, fsl_edma);
 }
}
