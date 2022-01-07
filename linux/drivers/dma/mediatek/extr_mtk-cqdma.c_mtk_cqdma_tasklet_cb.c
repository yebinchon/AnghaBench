
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx; } ;
struct mtk_cqdma_vdesc {struct mtk_cqdma_vdesc* parent; TYPE_1__ vd; } ;
struct mtk_cqdma_pchan {int irq; int lock; } ;


 int dma_run_dependencies (int *) ;
 int enable_irq (int ) ;
 int kfree (struct mtk_cqdma_vdesc*) ;
 struct mtk_cqdma_vdesc* mtk_cqdma_consume_work_queue (struct mtk_cqdma_pchan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mtk_cqdma_tasklet_cb(unsigned long data)
{
 struct mtk_cqdma_pchan *pc = (struct mtk_cqdma_pchan *)data;
 struct mtk_cqdma_vdesc *cvd = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&pc->lock, flags);

 cvd = mtk_cqdma_consume_work_queue(pc);
 spin_unlock_irqrestore(&pc->lock, flags);


 if (cvd) {
  dma_run_dependencies(&cvd->vd.tx);





  if (cvd->parent != cvd)
   kfree(cvd);
 }


 enable_irq(pc->irq);
}
