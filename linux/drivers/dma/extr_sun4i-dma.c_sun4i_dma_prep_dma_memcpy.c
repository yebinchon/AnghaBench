
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_slave_config {int src_maxburst; int dst_maxburst; void* dst_addr_width; void* src_addr_width; } ;
struct sun4i_dma_vchan {int vc; scalar_t__ is_dedicated; struct dma_slave_config cfg; } ;
struct sun4i_dma_promise {int cfg; int list; } ;
struct sun4i_dma_contract {int vd; int demands; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_MEM_TO_MEM ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int SUN4I_DDMA_DRQ_TYPE_SDRAM ;
 int SUN4I_DMA_CFG_DST_DRQ_TYPE (int ) ;
 int SUN4I_DMA_CFG_SRC_DRQ_TYPE (int ) ;
 int SUN4I_NDMA_DRQ_TYPE_SDRAM ;
 struct sun4i_dma_promise* generate_ddma_promise (struct dma_chan*,int ,int ,size_t,struct dma_slave_config*) ;
 struct sun4i_dma_contract* generate_dma_contract () ;
 struct sun4i_dma_promise* generate_ndma_promise (struct dma_chan*,int ,int ,size_t,struct dma_slave_config*,int ) ;
 int kfree (struct sun4i_dma_contract*) ;
 int list_add_tail (int *,int *) ;
 struct sun4i_dma_vchan* to_sun4i_dma_vchan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
sun4i_dma_prep_dma_memcpy(struct dma_chan *chan, dma_addr_t dest,
     dma_addr_t src, size_t len, unsigned long flags)
{
 struct sun4i_dma_vchan *vchan = to_sun4i_dma_vchan(chan);
 struct dma_slave_config *sconfig = &vchan->cfg;
 struct sun4i_dma_promise *promise;
 struct sun4i_dma_contract *contract;

 contract = generate_dma_contract();
 if (!contract)
  return ((void*)0);






 sconfig->src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 sconfig->dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 sconfig->src_maxburst = 8;
 sconfig->dst_maxburst = 8;

 if (vchan->is_dedicated)
  promise = generate_ddma_promise(chan, src, dest, len, sconfig);
 else
  promise = generate_ndma_promise(chan, src, dest, len, sconfig,
      DMA_MEM_TO_MEM);

 if (!promise) {
  kfree(contract);
  return ((void*)0);
 }


 if (vchan->is_dedicated) {
  promise->cfg |= SUN4I_DMA_CFG_SRC_DRQ_TYPE(SUN4I_DDMA_DRQ_TYPE_SDRAM) |
    SUN4I_DMA_CFG_DST_DRQ_TYPE(SUN4I_DDMA_DRQ_TYPE_SDRAM);
 } else {
  promise->cfg |= SUN4I_DMA_CFG_SRC_DRQ_TYPE(SUN4I_NDMA_DRQ_TYPE_SDRAM) |
    SUN4I_DMA_CFG_DST_DRQ_TYPE(SUN4I_NDMA_DRQ_TYPE_SDRAM);
 }


 list_add_tail(&promise->list, &contract->demands);


 return vchan_tx_prep(&vchan->vc, &contract->vd, flags);
}
