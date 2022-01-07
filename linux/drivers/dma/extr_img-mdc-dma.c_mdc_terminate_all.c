
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct mdc_chan {TYPE_2__ vc; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int vd; } ;


 int LIST_HEAD (int ) ;
 int MDC_CONTROL_AND_STATUS ;
 int MDC_CONTROL_AND_STATUS_CANCEL ;
 int head ;
 int mdc_chan_writel (struct mdc_chan*,int ,int ) ;
 int mdc_get_new_events (struct mdc_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdc_chan* to_mdc_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;
 int vchan_terminate_vdesc (int *) ;

__attribute__((used)) static int mdc_terminate_all(struct dma_chan *chan)
{
 struct mdc_chan *mchan = to_mdc_chan(chan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&mchan->vc.lock, flags);

 mdc_chan_writel(mchan, MDC_CONTROL_AND_STATUS_CANCEL,
   MDC_CONTROL_AND_STATUS);

 if (mchan->desc) {
  vchan_terminate_vdesc(&mchan->desc->vd);
  mchan->desc = ((void*)0);
 }
 vchan_get_all_descriptors(&mchan->vc, &head);

 mdc_get_new_events(mchan);

 spin_unlock_irqrestore(&mchan->vc.lock, flags);

 vchan_dma_desc_free_list(&mchan->vc, &head);

 return 0;
}
