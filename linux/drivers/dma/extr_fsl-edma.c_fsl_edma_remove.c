
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fsl_edma_engine {TYPE_2__* drvdata; int dma_dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int dmamuxs; } ;


 int dma_async_device_unregister (int *) ;
 int fsl_disable_clocks (struct fsl_edma_engine*,int ) ;
 int fsl_edma_cleanup_vchan (int *) ;
 int fsl_edma_irq_exit (struct platform_device*,struct fsl_edma_engine*) ;
 int of_dma_controller_free (struct device_node*) ;
 struct fsl_edma_engine* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fsl_edma_remove(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct fsl_edma_engine *fsl_edma = platform_get_drvdata(pdev);

 fsl_edma_irq_exit(pdev, fsl_edma);
 fsl_edma_cleanup_vchan(&fsl_edma->dma_dev);
 of_dma_controller_free(np);
 dma_async_device_unregister(&fsl_edma->dma_dev);
 fsl_disable_clocks(fsl_edma, fsl_edma->drvdata->dmamuxs);

 return 0;
}
