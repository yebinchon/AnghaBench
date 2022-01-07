
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct hsu_dma_chan {TYPE_2__ vchan; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int vdesc; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int hsu_dma_desc_free (int *) ;
 int hsu_dma_stop_channel (struct hsu_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hsu_dma_chan* to_hsu_dma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;

__attribute__((used)) static int hsu_dma_terminate_all(struct dma_chan *chan)
{
 struct hsu_dma_chan *hsuc = to_hsu_dma_chan(chan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&hsuc->vchan.lock, flags);

 hsu_dma_stop_channel(hsuc);
 if (hsuc->desc) {
  hsu_dma_desc_free(&hsuc->desc->vdesc);
  hsuc->desc = ((void*)0);
 }

 vchan_get_all_descriptors(&hsuc->vchan, &head);
 spin_unlock_irqrestore(&hsuc->vchan.lock, flags);
 vchan_dma_desc_free_list(&hsuc->vchan, &head);

 return 0;
}
