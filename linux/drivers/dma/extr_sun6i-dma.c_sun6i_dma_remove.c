
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun6i_dma_dev {int rstc; int clk; int clk_mbus; int slave; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int clk_disable_unprepare (int ) ;
 int dma_async_device_unregister (int *) ;
 int of_dma_controller_free (int ) ;
 struct sun6i_dma_dev* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int sun6i_dma_free (struct sun6i_dma_dev*) ;
 int sun6i_kill_tasklet (struct sun6i_dma_dev*) ;

__attribute__((used)) static int sun6i_dma_remove(struct platform_device *pdev)
{
 struct sun6i_dma_dev *sdc = platform_get_drvdata(pdev);

 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&sdc->slave);

 sun6i_kill_tasklet(sdc);

 clk_disable_unprepare(sdc->clk_mbus);
 clk_disable_unprepare(sdc->clk);
 reset_control_assert(sdc->rstc);

 sun6i_dma_free(sdc);

 return 0;
}
