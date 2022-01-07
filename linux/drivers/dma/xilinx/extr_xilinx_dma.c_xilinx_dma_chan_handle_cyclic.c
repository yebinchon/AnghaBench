
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* callback_param; int (* callback ) (void*) ;} ;
struct xilinx_dma_tx_descriptor {TYPE_1__ async_tx; } ;
struct xilinx_dma_chan {int lock; } ;
typedef int (* dma_async_tx_callback ) (void*) ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void xilinx_dma_chan_handle_cyclic(struct xilinx_dma_chan *chan,
       struct xilinx_dma_tx_descriptor *desc,
       unsigned long *flags)
{
 dma_async_tx_callback callback;
 void *callback_param;

 callback = desc->async_tx.callback;
 callback_param = desc->async_tx.callback_param;
 if (callback) {
  spin_unlock_irqrestore(&chan->lock, *flags);
  callback(callback_param);
  spin_lock_irqsave(&chan->lock, *flags);
 }
}
