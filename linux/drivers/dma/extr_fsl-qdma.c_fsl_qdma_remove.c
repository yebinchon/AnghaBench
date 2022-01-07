
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fsl_qdma_queue {int n_cq; int bus_addr; int cq; } ;
struct fsl_qdma_format {int dummy; } ;
struct fsl_qdma_engine {int block_number; struct fsl_qdma_queue** status; int dma_dev; } ;
struct device_node {int dummy; } ;


 int dma_async_device_unregister (int *) ;
 int dma_free_coherent (TYPE_1__*,int,int ,int ) ;
 int fsl_qdma_cleanup_vchan (int *) ;
 int fsl_qdma_irq_exit (struct platform_device*,struct fsl_qdma_engine*) ;
 int of_dma_controller_free (struct device_node*) ;
 struct fsl_qdma_engine* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fsl_qdma_remove(struct platform_device *pdev)
{
 int i;
 struct fsl_qdma_queue *status;
 struct device_node *np = pdev->dev.of_node;
 struct fsl_qdma_engine *fsl_qdma = platform_get_drvdata(pdev);

 fsl_qdma_irq_exit(pdev, fsl_qdma);
 fsl_qdma_cleanup_vchan(&fsl_qdma->dma_dev);
 of_dma_controller_free(np);
 dma_async_device_unregister(&fsl_qdma->dma_dev);

 for (i = 0; i < fsl_qdma->block_number; i++) {
  status = fsl_qdma->status[i];
  dma_free_coherent(&pdev->dev, sizeof(struct fsl_qdma_format) *
    status->n_cq, status->cq, status->bus_addr);
 }
 return 0;
}
