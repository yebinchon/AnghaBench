
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qat_rsa_ctx {int key_sz; int crt_mode; int * qinv; int * dq; int * dp; int * q; int * p; int * d; int * e; int * n; int dma_qinv; int dma_dq; int dma_dp; int dma_q; int dma_p; int dma_d; int dma_e; int dma_n; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,unsigned int,int *,int ) ;
 int memset (int *,char,unsigned int) ;

__attribute__((used)) static void qat_rsa_clear_ctx(struct device *dev, struct qat_rsa_ctx *ctx)
{
 unsigned int half_key_sz = ctx->key_sz / 2;


 if (ctx->n)
  dma_free_coherent(dev, ctx->key_sz, ctx->n, ctx->dma_n);
 if (ctx->e)
  dma_free_coherent(dev, ctx->key_sz, ctx->e, ctx->dma_e);
 if (ctx->d) {
  memset(ctx->d, '\0', ctx->key_sz);
  dma_free_coherent(dev, ctx->key_sz, ctx->d, ctx->dma_d);
 }
 if (ctx->p) {
  memset(ctx->p, '\0', half_key_sz);
  dma_free_coherent(dev, half_key_sz, ctx->p, ctx->dma_p);
 }
 if (ctx->q) {
  memset(ctx->q, '\0', half_key_sz);
  dma_free_coherent(dev, half_key_sz, ctx->q, ctx->dma_q);
 }
 if (ctx->dp) {
  memset(ctx->dp, '\0', half_key_sz);
  dma_free_coherent(dev, half_key_sz, ctx->dp, ctx->dma_dp);
 }
 if (ctx->dq) {
  memset(ctx->dq, '\0', half_key_sz);
  dma_free_coherent(dev, half_key_sz, ctx->dq, ctx->dma_dq);
 }
 if (ctx->qinv) {
  memset(ctx->qinv, '\0', half_key_sz);
  dma_free_coherent(dev, half_key_sz, ctx->qinv, ctx->dma_qinv);
 }

 ctx->n = ((void*)0);
 ctx->e = ((void*)0);
 ctx->d = ((void*)0);
 ctx->p = ((void*)0);
 ctx->q = ((void*)0);
 ctx->dp = ((void*)0);
 ctx->dq = ((void*)0);
 ctx->qinv = ((void*)0);
 ctx->crt_mode = 0;
 ctx->key_sz = 0;
}
