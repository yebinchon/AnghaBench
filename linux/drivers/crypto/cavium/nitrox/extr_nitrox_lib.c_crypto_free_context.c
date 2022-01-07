
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ctx_hdr {int dma; int vaddr; int pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct crypto_ctx_hdr*) ;

void crypto_free_context(void *ctx)
{
 struct crypto_ctx_hdr *ctxp;

 if (!ctx)
  return;

 ctxp = ctx;
 dma_pool_free(ctxp->pool, ctxp->vaddr, ctxp->dma);
 kfree(ctxp);
}
