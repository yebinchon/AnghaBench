
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {TYPE_1__* device; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct dma_chan* chan; } ;
struct TYPE_2__ {int (* device_issue_pending ) (struct dma_chan*) ;} ;


 int stub1 (struct dma_async_tx_descriptor*) ;
 int stub2 (struct dma_chan*) ;
 int txd_clear_next (struct dma_async_tx_descriptor*) ;
 int txd_clear_parent (struct dma_async_tx_descriptor*) ;
 int txd_lock (struct dma_async_tx_descriptor*) ;
 struct dma_async_tx_descriptor* txd_next (struct dma_async_tx_descriptor*) ;
 int txd_unlock (struct dma_async_tx_descriptor*) ;

void dma_run_dependencies(struct dma_async_tx_descriptor *tx)
{
 struct dma_async_tx_descriptor *dep = txd_next(tx);
 struct dma_async_tx_descriptor *dep_next;
 struct dma_chan *chan;

 if (!dep)
  return;


 txd_clear_next(tx);
 chan = dep->chan;





 for (; dep; dep = dep_next) {
  txd_lock(dep);
  txd_clear_parent(dep);
  dep_next = txd_next(dep);
  if (dep_next && dep_next->chan == chan)
   txd_clear_next(dep);
  else
   dep_next = ((void*)0);
  txd_unlock(dep);

  dep->tx_submit(dep);
 }

 chan->device->device_issue_pending(chan);
}
