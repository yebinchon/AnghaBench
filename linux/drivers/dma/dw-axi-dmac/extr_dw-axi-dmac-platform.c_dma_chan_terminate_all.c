
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct axi_dma_chan {TYPE_1__ vc; } ;


 int LIST_HEAD (int ) ;
 int axi_chan_disable (struct axi_dma_chan*) ;
 int axi_chan_name (struct axi_dma_chan*) ;
 int dchan2dev (struct dma_chan*) ;
 struct axi_dma_chan* dchan_to_axi_dma_chan (struct dma_chan*) ;
 int dev_vdbg (int ,char*,int ) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vchan_dma_desc_free_list (TYPE_1__*,int *) ;
 int vchan_get_all_descriptors (TYPE_1__*,int *) ;

__attribute__((used)) static int dma_chan_terminate_all(struct dma_chan *dchan)
{
 struct axi_dma_chan *chan = dchan_to_axi_dma_chan(dchan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&chan->vc.lock, flags);

 axi_chan_disable(chan);

 vchan_get_all_descriptors(&chan->vc, &head);





 vchan_dma_desc_free_list(&chan->vc, &head);

 spin_unlock_irqrestore(&chan->vc.lock, flags);

 dev_vdbg(dchan2dev(dchan), "terminated: %s\n", axi_chan_name(chan));

 return 0;
}
