
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mv_xor_v2_device {int desc_size; int clk; int irq_tasklet; TYPE_1__* msi_desc; int hw_desq; int hw_desq_virt; int dmadev; } ;
struct TYPE_2__ {int irq; } ;


 int MV_XOR_V2_DESC_NUM ;
 int clk_disable_unprepare (int ) ;
 int devm_free_irq (int *,int ,struct mv_xor_v2_device*) ;
 int dma_async_device_unregister (int *) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 struct mv_xor_v2_device* platform_get_drvdata (struct platform_device*) ;
 int platform_msi_domain_free_irqs (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int mv_xor_v2_remove(struct platform_device *pdev)
{
 struct mv_xor_v2_device *xor_dev = platform_get_drvdata(pdev);

 dma_async_device_unregister(&xor_dev->dmadev);

 dma_free_coherent(&pdev->dev,
     xor_dev->desc_size * MV_XOR_V2_DESC_NUM,
     xor_dev->hw_desq_virt, xor_dev->hw_desq);

 devm_free_irq(&pdev->dev, xor_dev->msi_desc->irq, xor_dev);

 platform_msi_domain_free_irqs(&pdev->dev);

 tasklet_kill(&xor_dev->irq_tasklet);

 clk_disable_unprepare(xor_dev->clk);

 return 0;
}
