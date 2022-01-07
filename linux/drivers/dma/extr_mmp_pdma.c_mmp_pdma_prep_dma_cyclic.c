
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_async_tx_descriptor {unsigned long flags; int phys; scalar_t__ cookie; } ;
struct TYPE_2__ {size_t dcmd; size_t dsadr; size_t dtadr; int ddadr; } ;
struct mmp_pdma_desc_sw {int tx_list; struct dma_async_tx_descriptor async_tx; TYPE_1__ desc; int node; } ;
struct mmp_pdma_chan {size_t dev_addr; int dir; size_t dcmd; struct mmp_pdma_desc_sw* cyclic_first; int dev; int slave_config; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef size_t dma_addr_t ;


 size_t DCMD_ENDIRQEN ;
 size_t DCMD_LENGTH ;


 scalar_t__ EBUSY ;
 size_t PDMA_MAX_DESC_BYTES ;
 int async_tx_ack (struct dma_async_tx_descriptor*) ;
 int dev_err (int ,char*) ;
 int list_add_tail (int *,int *) ;
 struct mmp_pdma_desc_sw* mmp_pdma_alloc_descriptor (struct mmp_pdma_chan*) ;
 int mmp_pdma_config_write (struct dma_chan*,int *,int) ;
 int mmp_pdma_free_desc_list (struct mmp_pdma_chan*,int *) ;
 struct mmp_pdma_chan* to_mmp_pdma_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
mmp_pdma_prep_dma_cyclic(struct dma_chan *dchan,
    dma_addr_t buf_addr, size_t len, size_t period_len,
    enum dma_transfer_direction direction,
    unsigned long flags)
{
 struct mmp_pdma_chan *chan;
 struct mmp_pdma_desc_sw *first = ((void*)0), *prev = ((void*)0), *new;
 dma_addr_t dma_src, dma_dst;

 if (!dchan || !len || !period_len)
  return ((void*)0);


 if (len % period_len != 0)
  return ((void*)0);

 if (period_len > PDMA_MAX_DESC_BYTES)
  return ((void*)0);

 chan = to_mmp_pdma_chan(dchan);
 mmp_pdma_config_write(dchan, &chan->slave_config, direction);

 switch (direction) {
 case 128:
  dma_src = buf_addr;
  dma_dst = chan->dev_addr;
  break;
 case 129:
  dma_dst = buf_addr;
  dma_src = chan->dev_addr;
  break;
 default:
  dev_err(chan->dev, "Unsupported direction for cyclic DMA\n");
  return ((void*)0);
 }

 chan->dir = direction;

 do {

  new = mmp_pdma_alloc_descriptor(chan);
  if (!new) {
   dev_err(chan->dev, "no memory for desc\n");
   goto fail;
  }

  new->desc.dcmd = (chan->dcmd | DCMD_ENDIRQEN |
      (DCMD_LENGTH & period_len));
  new->desc.dsadr = dma_src;
  new->desc.dtadr = dma_dst;

  if (!first)
   first = new;
  else
   prev->desc.ddadr = new->async_tx.phys;

  new->async_tx.cookie = 0;
  async_tx_ack(&new->async_tx);

  prev = new;
  len -= period_len;

  if (chan->dir == 128)
   dma_src += period_len;
  else
   dma_dst += period_len;


  list_add_tail(&new->node, &first->tx_list);
 } while (len);

 first->async_tx.flags = flags;
 first->async_tx.cookie = -EBUSY;


 new->desc.ddadr = first->async_tx.phys;
 chan->cyclic_first = first;

 return &first->async_tx;

fail:
 if (first)
  mmp_pdma_free_desc_list(chan, &first->tx_list);
 return ((void*)0);
}
