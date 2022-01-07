
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct caam_rng_ctx {int * bufs; int sh_desc; int sh_desc_dma; struct device* jrdev; } ;


 int DMA_TO_DEVICE ;
 int desc_bytes (int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int rng_unmap_buf (struct device*,int *) ;

__attribute__((used)) static inline void rng_unmap_ctx(struct caam_rng_ctx *ctx)
{
 struct device *jrdev = ctx->jrdev;

 if (ctx->sh_desc_dma)
  dma_unmap_single(jrdev, ctx->sh_desc_dma,
     desc_bytes(ctx->sh_desc), DMA_TO_DEVICE);
 rng_unmap_buf(jrdev, &ctx->bufs[0]);
 rng_unmap_buf(jrdev, &ctx->bufs[1]);
}
