
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_dma_tx_descriptor {scalar_t__ cyclic; } ;
struct xilinx_dma_chan {int cyclic; int lock; scalar_t__ err; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int EBUSY ;
 int append_desc_queue (struct xilinx_dma_chan*,struct xilinx_dma_tx_descriptor*) ;
 int dma_cookie_assign (struct dma_async_tx_descriptor*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct xilinx_dma_tx_descriptor* to_dma_tx_descriptor (struct dma_async_tx_descriptor*) ;
 struct xilinx_dma_chan* to_xilinx_chan (int ) ;
 int xilinx_dma_chan_reset (struct xilinx_dma_chan*) ;
 int xilinx_dma_free_tx_descriptor (struct xilinx_dma_chan*,struct xilinx_dma_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t xilinx_dma_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct xilinx_dma_tx_descriptor *desc = to_dma_tx_descriptor(tx);
 struct xilinx_dma_chan *chan = to_xilinx_chan(tx->chan);
 dma_cookie_t cookie;
 unsigned long flags;
 int err;

 if (chan->cyclic) {
  xilinx_dma_free_tx_descriptor(chan, desc);
  return -EBUSY;
 }

 if (chan->err) {




  err = xilinx_dma_chan_reset(chan);
  if (err < 0)
   return err;
 }

 spin_lock_irqsave(&chan->lock, flags);

 cookie = dma_cookie_assign(tx);


 append_desc_queue(chan, desc);

 if (desc->cyclic)
  chan->cyclic = 1;

 spin_unlock_irqrestore(&chan->lock, flags);

 return cookie;
}
