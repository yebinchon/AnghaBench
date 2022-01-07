
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_5__ {int device_node; } ;
struct TYPE_6__ {int task; TYPE_1__ chan; } ;
struct mtk_cqdma_vchan {TYPE_2__ vc; } ;
struct mtk_cqdma_device {int dma_requests; int dma_channels; int ddev; TYPE_4__** pc; struct mtk_cqdma_vchan* vc; } ;
struct TYPE_8__ {int tasklet; int irq; int lock; } ;


 int MTK_CQDMA_INT_EN ;
 int MTK_CQDMA_INT_EN_BIT ;
 int dma_async_device_unregister (int *) ;
 int list_del (int *) ;
 int mtk_cqdma_hw_deinit (struct mtk_cqdma_device*) ;
 int mtk_dma_clr (TYPE_4__*,int ,int ) ;
 int of_dma_controller_free (int ) ;
 struct mtk_cqdma_device* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int mtk_cqdma_remove(struct platform_device *pdev)
{
 struct mtk_cqdma_device *cqdma = platform_get_drvdata(pdev);
 struct mtk_cqdma_vchan *vc;
 unsigned long flags;
 int i;


 for (i = 0; i < cqdma->dma_requests; i++) {
  vc = &cqdma->vc[i];

  list_del(&vc->vc.chan.device_node);
  tasklet_kill(&vc->vc.task);
 }


 for (i = 0; i < cqdma->dma_channels; i++) {
  spin_lock_irqsave(&cqdma->pc[i]->lock, flags);
  mtk_dma_clr(cqdma->pc[i], MTK_CQDMA_INT_EN,
       MTK_CQDMA_INT_EN_BIT);
  spin_unlock_irqrestore(&cqdma->pc[i]->lock, flags);


  synchronize_irq(cqdma->pc[i]->irq);

  tasklet_kill(&cqdma->pc[i]->tasklet);
 }


 mtk_cqdma_hw_deinit(cqdma);

 dma_async_device_unregister(&cqdma->ddev);
 of_dma_controller_free(pdev->dev.of_node);

 return 0;
}
