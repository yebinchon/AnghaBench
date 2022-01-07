
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_4__ {int device_node; } ;
struct TYPE_5__ {int task; TYPE_1__ chan; } ;
struct mtk_hsdma_vchan {TYPE_2__ vc; } ;
struct mtk_hsdma_device {int dma_requests; int ddev; int irq; struct mtk_hsdma_vchan* vc; } ;


 int MTK_HSDMA_INT_ENABLE ;
 int dma_async_device_unregister (int *) ;
 int list_del (int *) ;
 int mtk_dma_write (struct mtk_hsdma_device*,int ,int ) ;
 int mtk_hsdma_hw_deinit (struct mtk_hsdma_device*) ;
 int of_dma_controller_free (int ) ;
 struct mtk_hsdma_device* platform_get_drvdata (struct platform_device*) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int mtk_hsdma_remove(struct platform_device *pdev)
{
 struct mtk_hsdma_device *hsdma = platform_get_drvdata(pdev);
 struct mtk_hsdma_vchan *vc;
 int i;


 for (i = 0; i < hsdma->dma_requests; i++) {
  vc = &hsdma->vc[i];

  list_del(&vc->vc.chan.device_node);
  tasklet_kill(&vc->vc.task);
 }


 mtk_dma_write(hsdma, MTK_HSDMA_INT_ENABLE, 0);


 synchronize_irq(hsdma->irq);


 mtk_hsdma_hw_deinit(hsdma);

 dma_async_device_unregister(&hsdma->ddev);
 of_dma_controller_free(pdev->dev.of_node);

 return 0;
}
