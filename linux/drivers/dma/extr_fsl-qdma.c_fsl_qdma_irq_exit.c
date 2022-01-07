
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_qdma_engine {int block_number; int * queue_irq; int error_irq; } ;


 int devm_free_irq (int *,int ,struct fsl_qdma_engine*) ;

__attribute__((used)) static void fsl_qdma_irq_exit(struct platform_device *pdev,
         struct fsl_qdma_engine *fsl_qdma)
{
 int i;

 devm_free_irq(&pdev->dev, fsl_qdma->error_irq, fsl_qdma);
 for (i = 0; i < fsl_qdma->block_number; i++)
  devm_free_irq(&pdev->dev, fsl_qdma->queue_irq[i], fsl_qdma);
}
