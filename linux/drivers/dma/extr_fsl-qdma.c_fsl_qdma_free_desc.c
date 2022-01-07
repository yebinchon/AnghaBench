
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct fsl_qdma_queue {int queue_lock; int comp_free; } ;
struct fsl_qdma_comp {int list; TYPE_1__* qchan; } ;
struct TYPE_2__ {struct fsl_qdma_queue* queue; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fsl_qdma_comp* to_fsl_qdma_comp (struct virt_dma_desc*) ;

__attribute__((used)) static void fsl_qdma_free_desc(struct virt_dma_desc *vdesc)
{
 unsigned long flags;
 struct fsl_qdma_comp *fsl_comp;
 struct fsl_qdma_queue *fsl_queue;

 fsl_comp = to_fsl_qdma_comp(vdesc);
 fsl_queue = fsl_comp->qchan->queue;

 spin_lock_irqsave(&fsl_queue->queue_lock, flags);
 list_add_tail(&fsl_comp->list, &fsl_queue->comp_free);
 spin_unlock_irqrestore(&fsl_queue->queue_lock, flags);
}
