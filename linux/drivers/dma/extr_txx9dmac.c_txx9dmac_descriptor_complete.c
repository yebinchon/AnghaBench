
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_async_tx_descriptor {int cookie; } ;
struct txx9dmac_desc {int desc_node; int tx_list; struct dma_async_tx_descriptor txd; } ;
struct txx9dmac_chan {int free_list; int chan; } ;
struct dmaengine_desc_callback {int dummy; } ;


 int chan2dev (int *) ;
 int dev_vdbg (int ,char*,int ,struct txx9dmac_desc*) ;
 int dma_cookie_complete (struct dma_async_tx_descriptor*) ;
 int dma_descriptor_unmap (struct dma_async_tx_descriptor*) ;
 int dma_run_dependencies (struct dma_async_tx_descriptor*) ;
 int dmaengine_desc_callback_invoke (struct dmaengine_desc_callback*,int *) ;
 int dmaengine_desc_get_callback (struct dma_async_tx_descriptor*,struct dmaengine_desc_callback*) ;
 int list_move (int *,int *) ;
 int list_splice_init (int *,int *) ;
 int txx9dmac_sync_desc_for_cpu (struct txx9dmac_chan*,struct txx9dmac_desc*) ;

__attribute__((used)) static void
txx9dmac_descriptor_complete(struct txx9dmac_chan *dc,
        struct txx9dmac_desc *desc)
{
 struct dmaengine_desc_callback cb;
 struct dma_async_tx_descriptor *txd = &desc->txd;

 dev_vdbg(chan2dev(&dc->chan), "descriptor %u %p complete\n",
   txd->cookie, desc);

 dma_cookie_complete(txd);
 dmaengine_desc_get_callback(txd, &cb);

 txx9dmac_sync_desc_for_cpu(dc, desc);
 list_splice_init(&desc->tx_list, &dc->free_list);
 list_move(&desc->desc_node, &dc->free_list);

 dma_descriptor_unmap(txd);




 dmaengine_desc_callback_invoke(&cb, ((void*)0));
 dma_run_dependencies(txd);
}
