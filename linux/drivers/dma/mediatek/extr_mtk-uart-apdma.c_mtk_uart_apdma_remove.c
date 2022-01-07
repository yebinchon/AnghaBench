
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mtk_uart_apdmadev {int ddev; } ;


 int dma_async_device_unregister (int *) ;
 int mtk_uart_apdma_free (struct mtk_uart_apdmadev*) ;
 int of_dma_controller_free (int ) ;
 struct mtk_uart_apdmadev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_1__*) ;

__attribute__((used)) static int mtk_uart_apdma_remove(struct platform_device *pdev)
{
 struct mtk_uart_apdmadev *mtkd = platform_get_drvdata(pdev);

 of_dma_controller_free(pdev->dev.of_node);

 mtk_uart_apdma_free(mtkd);

 dma_async_device_unregister(&mtkd->ddev);

 pm_runtime_disable(&pdev->dev);

 return 0;
}
