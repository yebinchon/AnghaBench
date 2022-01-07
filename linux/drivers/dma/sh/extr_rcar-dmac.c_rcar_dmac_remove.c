
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_dmac {int engine; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dma_async_device_unregister (int *) ;
 int of_dma_controller_free (int ) ;
 struct rcar_dmac* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_1__*) ;

__attribute__((used)) static int rcar_dmac_remove(struct platform_device *pdev)
{
 struct rcar_dmac *dmac = platform_get_drvdata(pdev);

 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&dmac->engine);

 pm_runtime_disable(&pdev->dev);

 return 0;
}
