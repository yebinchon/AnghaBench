
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct idma64_chan {TYPE_2__ vchan; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int vdesc; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int idma64_chan_deactivate (struct idma64_chan*,int) ;
 int idma64_stop_transfer (struct idma64_chan*) ;
 int idma64_vdesc_free (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct idma64_chan* to_idma64_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;

__attribute__((used)) static int idma64_terminate_all(struct dma_chan *chan)
{
 struct idma64_chan *idma64c = to_idma64_chan(chan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&idma64c->vchan.lock, flags);
 idma64_chan_deactivate(idma64c, 1);
 idma64_stop_transfer(idma64c);
 if (idma64c->desc) {
  idma64_vdesc_free(&idma64c->desc->vdesc);
  idma64c->desc = ((void*)0);
 }
 vchan_get_all_descriptors(&idma64c->vchan, &head);
 spin_unlock_irqrestore(&idma64c->vchan.lock, flags);

 vchan_dma_desc_free_list(&idma64c->vchan, &head);
 return 0;
}
