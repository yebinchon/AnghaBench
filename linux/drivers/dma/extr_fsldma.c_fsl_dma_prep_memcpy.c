
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int dummy; } ;
struct dma_async_tx_descriptor {unsigned long flags; int cookie; int phys; } ;
struct fsl_desc_sw {int tx_list; struct dma_async_tx_descriptor async_tx; int node; int hw; } ;
struct dma_chan {int dummy; } ;
typedef size_t dma_addr_t ;


 int EBUSY ;
 scalar_t__ FSL_DMA_BCR_MAX_CNT ;
 int async_tx_ack (struct dma_async_tx_descriptor*) ;
 int chan_err (struct fsldma_chan*,char*,int ) ;
 struct fsl_desc_sw* fsl_dma_alloc_descriptor (struct fsldma_chan*) ;
 int fsldma_free_desc_list_reverse (struct fsldma_chan*,int *) ;
 int list_add_tail (int *,int *) ;
 size_t min (size_t,size_t) ;
 int msg_ld_oom ;
 int set_desc_cnt (struct fsldma_chan*,int *,size_t) ;
 int set_desc_dst (struct fsldma_chan*,int *,size_t) ;
 int set_desc_next (struct fsldma_chan*,int *,int ) ;
 int set_desc_src (struct fsldma_chan*,int *,size_t) ;
 int set_ld_eol (struct fsldma_chan*,struct fsl_desc_sw*) ;
 struct fsldma_chan* to_fsl_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
fsl_dma_prep_memcpy(struct dma_chan *dchan,
 dma_addr_t dma_dst, dma_addr_t dma_src,
 size_t len, unsigned long flags)
{
 struct fsldma_chan *chan;
 struct fsl_desc_sw *first = ((void*)0), *prev = ((void*)0), *new;
 size_t copy;

 if (!dchan)
  return ((void*)0);

 if (!len)
  return ((void*)0);

 chan = to_fsl_chan(dchan);

 do {


  new = fsl_dma_alloc_descriptor(chan);
  if (!new) {
   chan_err(chan, "%s\n", msg_ld_oom);
   goto fail;
  }

  copy = min(len, (size_t)FSL_DMA_BCR_MAX_CNT);

  set_desc_cnt(chan, &new->hw, copy);
  set_desc_src(chan, &new->hw, dma_src);
  set_desc_dst(chan, &new->hw, dma_dst);

  if (!first)
   first = new;
  else
   set_desc_next(chan, &prev->hw, new->async_tx.phys);

  new->async_tx.cookie = 0;
  async_tx_ack(&new->async_tx);

  prev = new;
  len -= copy;
  dma_src += copy;
  dma_dst += copy;


  list_add_tail(&new->node, &first->tx_list);
 } while (len);

 new->async_tx.flags = flags;
 new->async_tx.cookie = -EBUSY;


 set_ld_eol(chan, new);

 return &first->async_tx;

fail:
 if (!first)
  return ((void*)0);

 fsldma_free_desc_list_reverse(chan, &first->tx_list);
 return ((void*)0);
}
