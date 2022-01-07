
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct axi_dmac_chan {TYPE_1__ vchan; int active_descs; int * next_desc; } ;
struct axi_dmac {int dummy; } ;


 int AXI_DMAC_REG_CTRL ;
 int LIST_HEAD (int ) ;
 int axi_dmac_write (struct axi_dmac*,int ,int ) ;
 struct axi_dmac* chan_to_axi_dmac (struct axi_dmac_chan*) ;
 int head ;
 int list_splice_tail_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct axi_dmac_chan* to_axi_dmac_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_1__*,int *) ;
 int vchan_get_all_descriptors (TYPE_1__*,int *) ;

__attribute__((used)) static int axi_dmac_terminate_all(struct dma_chan *c)
{
 struct axi_dmac_chan *chan = to_axi_dmac_chan(c);
 struct axi_dmac *dmac = chan_to_axi_dmac(chan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&chan->vchan.lock, flags);
 axi_dmac_write(dmac, AXI_DMAC_REG_CTRL, 0);
 chan->next_desc = ((void*)0);
 vchan_get_all_descriptors(&chan->vchan, &head);
 list_splice_tail_init(&chan->active_descs, &head);
 spin_unlock_irqrestore(&chan->vchan.lock, flags);

 vchan_dma_desc_free_list(&chan->vchan, &head);

 return 0;
}
