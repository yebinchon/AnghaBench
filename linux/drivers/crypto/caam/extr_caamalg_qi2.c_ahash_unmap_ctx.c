
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct caam_hash_state {scalar_t__ ctx_dma; int ctx_dma_len; } ;
struct ahash_request {int dummy; } ;
struct ahash_edesc {int dummy; } ;


 struct caam_hash_state* ahash_request_ctx (struct ahash_request*) ;
 int ahash_unmap (struct device*,struct ahash_edesc*,struct ahash_request*) ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;

__attribute__((used)) static inline void ahash_unmap_ctx(struct device *dev,
       struct ahash_edesc *edesc,
       struct ahash_request *req, u32 flag)
{
 struct caam_hash_state *state = ahash_request_ctx(req);

 if (state->ctx_dma) {
  dma_unmap_single(dev, state->ctx_dma, state->ctx_dma_len, flag);
  state->ctx_dma = 0;
 }
 ahash_unmap(dev, edesc, req);
}
