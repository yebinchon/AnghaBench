
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fsl_edma_engine {int dma_dev; } ;


 int dma_async_device_unregister (int *) ;
 int fsl_edma_cleanup_vchan (int *) ;
 int mcf_edma_irq_free (struct platform_device*,struct fsl_edma_engine*) ;
 struct fsl_edma_engine* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mcf_edma_remove(struct platform_device *pdev)
{
 struct fsl_edma_engine *mcf_edma = platform_get_drvdata(pdev);

 mcf_edma_irq_free(pdev, mcf_edma);
 fsl_edma_cleanup_vchan(&mcf_edma->dma_dev);
 dma_async_device_unregister(&mcf_edma->dma_dev);

 return 0;
}
