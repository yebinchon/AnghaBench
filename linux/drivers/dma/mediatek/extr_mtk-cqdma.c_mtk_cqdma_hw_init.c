
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct mtk_cqdma_device {size_t dma_channels; TYPE_1__** pc; int clk; } ;
struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int cqdma2dev (struct mtk_cqdma_device*) ;
 int dev_err (int ,char*) ;
 scalar_t__ mtk_cqdma_hard_reset (TYPE_1__*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mtk_cqdma_hw_init(struct mtk_cqdma_device *cqdma)
{
 unsigned long flags;
 int err;
 u32 i;

 pm_runtime_enable(cqdma2dev(cqdma));
 pm_runtime_get_sync(cqdma2dev(cqdma));

 err = clk_prepare_enable(cqdma->clk);

 if (err) {
  pm_runtime_put_sync(cqdma2dev(cqdma));
  pm_runtime_disable(cqdma2dev(cqdma));
  return err;
 }


 for (i = 0; i < cqdma->dma_channels; ++i) {
  spin_lock_irqsave(&cqdma->pc[i]->lock, flags);
  if (mtk_cqdma_hard_reset(cqdma->pc[i]) < 0) {
   dev_err(cqdma2dev(cqdma), "cqdma hard reset timeout\n");
   spin_unlock_irqrestore(&cqdma->pc[i]->lock, flags);

   clk_disable_unprepare(cqdma->clk);
   pm_runtime_put_sync(cqdma2dev(cqdma));
   pm_runtime_disable(cqdma2dev(cqdma));
   return -EINVAL;
  }
  spin_unlock_irqrestore(&cqdma->pc[i]->lock, flags);
 }

 return 0;
}
