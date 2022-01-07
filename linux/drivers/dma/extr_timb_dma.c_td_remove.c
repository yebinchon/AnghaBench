
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timb_dma {int membase; int tasklet; int dma; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int IORESOURCE_MEM ;
 int dev_dbg (int *,char*) ;
 int dma_async_device_unregister (int *) ;
 int free_irq (int,struct timb_dma*) ;
 int iounmap (int ) ;
 int kfree (struct timb_dma*) ;
 struct timb_dma* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int td_remove(struct platform_device *pdev)
{
 struct timb_dma *td = platform_get_drvdata(pdev);
 struct resource *iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 int irq = platform_get_irq(pdev, 0);

 dma_async_device_unregister(&td->dma);
 free_irq(irq, td);
 tasklet_kill(&td->tasklet);
 iounmap(td->membase);
 kfree(td);
 release_mem_region(iomem->start, resource_size(iomem));

 dev_dbg(&pdev->dev, "Removed...\n");
 return 0;
}
