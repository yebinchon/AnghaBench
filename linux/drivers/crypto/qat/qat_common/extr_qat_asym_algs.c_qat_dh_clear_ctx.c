
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qat_dh_ctx {int g2; scalar_t__ p_size; int * p; int dma_p; int * xa; int dma_xa; int * g; int dma_g; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,scalar_t__,int *,int ) ;

__attribute__((used)) static void qat_dh_clear_ctx(struct device *dev, struct qat_dh_ctx *ctx)
{
 if (ctx->g) {
  dma_free_coherent(dev, ctx->p_size, ctx->g, ctx->dma_g);
  ctx->g = ((void*)0);
 }
 if (ctx->xa) {
  dma_free_coherent(dev, ctx->p_size, ctx->xa, ctx->dma_xa);
  ctx->xa = ((void*)0);
 }
 if (ctx->p) {
  dma_free_coherent(dev, ctx->p_size, ctx->p, ctx->dma_p);
  ctx->p = ((void*)0);
 }
 ctx->p_size = 0;
 ctx->g2 = 0;
}
