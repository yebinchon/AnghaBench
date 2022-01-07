
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_slave_config {scalar_t__ src_addr; scalar_t__ dst_addr; } ;
struct sun4i_dma_vchan {int vc; int endpoint; scalar_t__ is_dedicated; struct dma_slave_config cfg; } ;
struct sun4i_dma_promise {int cfg; int list; } ;
struct sun4i_dma_contract {int is_cyclic; int vd; int demands; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef scalar_t__ dma_addr_t ;


 int DIV_ROUND_UP (size_t,int) ;
 int DMA_MEM_TO_DEV ;
 int SUN4I_DMA_CFG_DST_ADDR_MODE (int ) ;
 int SUN4I_DMA_CFG_DST_DRQ_TYPE (int ) ;
 int SUN4I_DMA_CFG_SRC_ADDR_MODE (int ) ;
 int SUN4I_DMA_CFG_SRC_DRQ_TYPE (int ) ;
 int SUN4I_NDMA_ADDR_MODE_IO ;
 int SUN4I_NDMA_DRQ_TYPE_SDRAM ;
 int chan2dev (struct dma_chan*) ;
 int dev_err (int ,char*) ;
 struct sun4i_dma_contract* generate_dma_contract () ;
 struct sun4i_dma_promise* generate_ndma_promise (struct dma_chan*,scalar_t__,scalar_t__,int,struct dma_slave_config*,int) ;
 int is_slave_direction (int) ;
 int list_add_tail (int *,int *) ;
 int min (size_t,size_t) ;
 struct sun4i_dma_vchan* to_sun4i_dma_vchan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
     size_t period_len, enum dma_transfer_direction dir,
     unsigned long flags)
{
 struct sun4i_dma_vchan *vchan = to_sun4i_dma_vchan(chan);
 struct dma_slave_config *sconfig = &vchan->cfg;
 struct sun4i_dma_promise *promise;
 struct sun4i_dma_contract *contract;
 dma_addr_t src, dest;
 u32 endpoints;
 int nr_periods, offset, plength, i;

 if (!is_slave_direction(dir)) {
  dev_err(chan2dev(chan), "Invalid DMA direction\n");
  return ((void*)0);
 }

 if (vchan->is_dedicated) {






  dev_err(chan2dev(chan),
   "Cyclic transfers are only supported on Normal DMA\n");
  return ((void*)0);
 }

 contract = generate_dma_contract();
 if (!contract)
  return ((void*)0);

 contract->is_cyclic = 1;


 if (dir == DMA_MEM_TO_DEV) {
  src = buf;
  dest = sconfig->dst_addr;
  endpoints = SUN4I_DMA_CFG_SRC_DRQ_TYPE(SUN4I_NDMA_DRQ_TYPE_SDRAM) |
       SUN4I_DMA_CFG_DST_DRQ_TYPE(vchan->endpoint) |
       SUN4I_DMA_CFG_DST_ADDR_MODE(SUN4I_NDMA_ADDR_MODE_IO);
 } else {
  src = sconfig->src_addr;
  dest = buf;
  endpoints = SUN4I_DMA_CFG_SRC_DRQ_TYPE(vchan->endpoint) |
       SUN4I_DMA_CFG_SRC_ADDR_MODE(SUN4I_NDMA_ADDR_MODE_IO) |
       SUN4I_DMA_CFG_DST_DRQ_TYPE(SUN4I_NDMA_DRQ_TYPE_SDRAM);
 }
 nr_periods = DIV_ROUND_UP(len / period_len, 2);
 for (i = 0; i < nr_periods; i++) {

  offset = i * period_len * 2;
  plength = min((len - offset), (period_len * 2));
  if (dir == DMA_MEM_TO_DEV)
   src = buf + offset;
  else
   dest = buf + offset;


  promise = generate_ndma_promise(chan, src, dest,
      plength, sconfig, dir);
  if (!promise) {

   return ((void*)0);
  }
  promise->cfg |= endpoints;


  list_add_tail(&promise->list, &contract->demands);
 }


 return vchan_tx_prep(&vchan->vc, &contract->vd, flags);
}
