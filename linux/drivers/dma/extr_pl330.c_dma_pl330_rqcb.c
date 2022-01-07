
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pl330_desc {int status; struct dma_pl330_chan* pchan; } ;
struct dma_pl330_chan {int task; int lock; } ;
typedef enum pl330_op_err { ____Placeholder_pl330_op_err } pl330_op_err ;


 int DONE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void dma_pl330_rqcb(struct dma_pl330_desc *desc, enum pl330_op_err err)
{
 struct dma_pl330_chan *pch;
 unsigned long flags;

 if (!desc)
  return;

 pch = desc->pchan;


 if (!pch)
  return;

 spin_lock_irqsave(&pch->lock, flags);

 desc->status = DONE;

 spin_unlock_irqrestore(&pch->lock, flags);

 tasklet_schedule(&pch->task);
}
