
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {scalar_t__ id; int dev; int pdma; } ;
struct dma_device {void* pq_align; void* max_pq; int device_prep_dma_pq; int cap_mask; void* xor_align; void* max_xor; int device_prep_dma_xor; int device_tx_status; int device_issue_pending; int device_free_chan_resources; int device_alloc_chan_resources; int dev; } ;


 void* DMAENGINE_ALIGN_64_BYTES ;
 int DMA_PQ ;
 int DMA_XOR ;
 void* XGENE_DMA_MAX_XOR_SRC ;
 scalar_t__ XGENE_DMA_PQ_CHANNEL ;
 scalar_t__ XGENE_DMA_XOR_CHANNEL ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 scalar_t__ dma_has_cap (int ,int ) ;
 scalar_t__ is_pq_enabled (int ) ;
 int xgene_dma_alloc_chan_resources ;
 int xgene_dma_free_chan_resources ;
 int xgene_dma_issue_pending ;
 int xgene_dma_prep_pq ;
 int xgene_dma_prep_xor ;
 int xgene_dma_tx_status ;

__attribute__((used)) static void xgene_dma_set_caps(struct xgene_dma_chan *chan,
          struct dma_device *dma_dev)
{

 dma_cap_zero(dma_dev->cap_mask);
 if ((chan->id == XGENE_DMA_PQ_CHANNEL) &&
     is_pq_enabled(chan->pdma)) {
  dma_cap_set(DMA_PQ, dma_dev->cap_mask);
  dma_cap_set(DMA_XOR, dma_dev->cap_mask);
 } else if ((chan->id == XGENE_DMA_XOR_CHANNEL) &&
     !is_pq_enabled(chan->pdma)) {
  dma_cap_set(DMA_XOR, dma_dev->cap_mask);
 }


 dma_dev->dev = chan->dev;
 dma_dev->device_alloc_chan_resources = xgene_dma_alloc_chan_resources;
 dma_dev->device_free_chan_resources = xgene_dma_free_chan_resources;
 dma_dev->device_issue_pending = xgene_dma_issue_pending;
 dma_dev->device_tx_status = xgene_dma_tx_status;

 if (dma_has_cap(DMA_XOR, dma_dev->cap_mask)) {
  dma_dev->device_prep_dma_xor = xgene_dma_prep_xor;
  dma_dev->max_xor = XGENE_DMA_MAX_XOR_SRC;
  dma_dev->xor_align = DMAENGINE_ALIGN_64_BYTES;
 }

 if (dma_has_cap(DMA_PQ, dma_dev->cap_mask)) {
  dma_dev->device_prep_dma_pq = xgene_dma_prep_pq;
  dma_dev->max_pq = XGENE_DMA_MAX_XOR_SRC;
  dma_dev->pq_align = DMAENGINE_ALIGN_64_BYTES;
 }
}
