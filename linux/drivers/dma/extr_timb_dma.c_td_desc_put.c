
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timb_dma_desc {int desc_node; } ;
struct timb_dma_chan {int lock; int free_list; int chan; } ;


 int chan2dev (int *) ;
 int dev_dbg (int ,char*,struct timb_dma_desc*) ;
 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void td_desc_put(struct timb_dma_chan *td_chan,
 struct timb_dma_desc *td_desc)
{
 dev_dbg(chan2dev(&td_chan->chan), "Putting desc: %p\n", td_desc);

 spin_lock_bh(&td_chan->lock);
 list_add(&td_desc->desc_node, &td_chan->free_list);
 spin_unlock_bh(&td_chan->lock);
}
