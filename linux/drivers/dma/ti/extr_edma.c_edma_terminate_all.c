
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct edma_chan {TYPE_2__ vchan; TYPE_1__* edesc; int tc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int vdesc; scalar_t__ cyclic; } ;


 int EVENTQ_DEFAULT ;
 int LIST_HEAD (int ) ;
 int edma_assign_channel_eventq (struct edma_chan*,int ) ;
 int edma_stop (struct edma_chan*) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct edma_chan* to_edma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;
 int vchan_terminate_vdesc (int *) ;

__attribute__((used)) static int edma_terminate_all(struct dma_chan *chan)
{
 struct edma_chan *echan = to_edma_chan(chan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&echan->vchan.lock, flags);






 if (echan->edesc) {
  edma_stop(echan);

  if (!echan->tc && echan->edesc->cyclic)
   edma_assign_channel_eventq(echan, EVENTQ_DEFAULT);

  vchan_terminate_vdesc(&echan->edesc->vdesc);
  echan->edesc = ((void*)0);
 }

 vchan_get_all_descriptors(&echan->vchan, &head);
 spin_unlock_irqrestore(&echan->vchan.lock, flags);
 vchan_dma_desc_free_list(&echan->vchan, &head);

 return 0;
}
