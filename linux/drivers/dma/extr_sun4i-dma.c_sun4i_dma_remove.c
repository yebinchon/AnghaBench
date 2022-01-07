
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_dma_dev {int clk; int slave; int irq; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int clk_disable_unprepare (int ) ;
 int disable_irq (int ) ;
 int dma_async_device_unregister (int *) ;
 int of_dma_controller_free (int ) ;
 struct sun4i_dma_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int sun4i_dma_remove(struct platform_device *pdev)
{
 struct sun4i_dma_dev *priv = platform_get_drvdata(pdev);


 disable_irq(priv->irq);

 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&priv->slave);

 clk_disable_unprepare(priv->clk);

 return 0;
}
