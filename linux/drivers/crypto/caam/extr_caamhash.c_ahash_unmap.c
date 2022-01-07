
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct caam_hash_state {scalar_t__ buf_dma; } ;
struct ahash_request {int src; } ;
struct ahash_edesc {scalar_t__ sec4_sg_bytes; scalar_t__ sec4_sg_dma; scalar_t__ src_nents; } ;


 int DMA_TO_DEVICE ;
 struct caam_hash_state* ahash_request_ctx (struct ahash_request*) ;
 scalar_t__* current_buflen (struct caam_hash_state*) ;
 int dma_unmap_sg (struct device*,int ,scalar_t__,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static inline void ahash_unmap(struct device *dev,
   struct ahash_edesc *edesc,
   struct ahash_request *req, int dst_len)
{
 struct caam_hash_state *state = ahash_request_ctx(req);

 if (edesc->src_nents)
  dma_unmap_sg(dev, req->src, edesc->src_nents, DMA_TO_DEVICE);

 if (edesc->sec4_sg_bytes)
  dma_unmap_single(dev, edesc->sec4_sg_dma,
     edesc->sec4_sg_bytes, DMA_TO_DEVICE);

 if (state->buf_dma) {
  dma_unmap_single(dev, state->buf_dma, *current_buflen(state),
     DMA_TO_DEVICE);
  state->buf_dma = 0;
 }
}
