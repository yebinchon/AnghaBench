
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_dma_desc {int desc_node; } ;
struct pch_dma_chan {int descs_allocated; int lock; int free_list; } ;
struct dma_chan {int dummy; } ;


 int EIO ;
 int GFP_KERNEL ;
 int LIST_HEAD (int ) ;
 int chan2dev (struct dma_chan*) ;
 int dev_dbg (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 int dma_cookie_init (struct dma_chan*) ;
 int init_nr_desc_per_channel ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int list_splice (int *,int *) ;
 struct pch_dma_desc* pdc_alloc_desc (struct dma_chan*,int ) ;
 int pdc_enable_irq (struct dma_chan*,int) ;
 int pdc_is_idle (struct pch_dma_chan*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tmp_list ;
 struct pch_dma_chan* to_pd_chan (struct dma_chan*) ;

__attribute__((used)) static int pd_alloc_chan_resources(struct dma_chan *chan)
{
 struct pch_dma_chan *pd_chan = to_pd_chan(chan);
 struct pch_dma_desc *desc;
 LIST_HEAD(tmp_list);
 int i;

 if (!pdc_is_idle(pd_chan)) {
  dev_dbg(chan2dev(chan), "DMA channel not idle ?\n");
  return -EIO;
 }

 if (!list_empty(&pd_chan->free_list))
  return pd_chan->descs_allocated;

 for (i = 0; i < init_nr_desc_per_channel; i++) {
  desc = pdc_alloc_desc(chan, GFP_KERNEL);

  if (!desc) {
   dev_warn(chan2dev(chan),
    "Only allocated %d initial descriptors\n", i);
   break;
  }

  list_add_tail(&desc->desc_node, &tmp_list);
 }

 spin_lock_irq(&pd_chan->lock);
 list_splice(&tmp_list, &pd_chan->free_list);
 pd_chan->descs_allocated = i;
 dma_cookie_init(chan);
 spin_unlock_irq(&pd_chan->lock);

 pdc_enable_irq(chan, 1);

 return pd_chan->descs_allocated;
}
