
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct mtk_cqdma_device {size_t dma_channels; TYPE_1__** pc; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int tasklet; int irq; int lock; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MTK_CQDMA_INT_FLAG ;
 int MTK_CQDMA_INT_FLAG_BIT ;
 int disable_irq_nosync (int ) ;
 int mtk_dma_clr (TYPE_1__*,int ,int) ;
 int mtk_dma_read (TYPE_1__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mtk_cqdma_irq(int irq, void *devid)
{
 struct mtk_cqdma_device *cqdma = devid;
 irqreturn_t ret = IRQ_NONE;
 bool schedule_tasklet = 0;
 u32 i;


 for (i = 0; i < cqdma->dma_channels; ++i, schedule_tasklet = 0) {
  spin_lock(&cqdma->pc[i]->lock);
  if (mtk_dma_read(cqdma->pc[i],
     MTK_CQDMA_INT_FLAG) & MTK_CQDMA_INT_FLAG_BIT) {

   mtk_dma_clr(cqdma->pc[i], MTK_CQDMA_INT_FLAG,
        MTK_CQDMA_INT_FLAG_BIT);

   schedule_tasklet = 1;
   ret = IRQ_HANDLED;
  }
  spin_unlock(&cqdma->pc[i]->lock);

  if (schedule_tasklet) {

   disable_irq_nosync(cqdma->pc[i]->irq);


   tasklet_schedule(&cqdma->pc[i]->tasklet);
  }
 }

 return ret;
}
