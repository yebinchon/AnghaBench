
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_crypto_ctx {int * out_sg; int * in_sg; int * csbcpb_aead; int * csbcpb; int kmem; } ;
struct crypto_tfm {int dummy; } ;


 struct nx_crypto_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int kzfree (int ) ;

void nx_crypto_ctx_exit(struct crypto_tfm *tfm)
{
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(tfm);

 kzfree(nx_ctx->kmem);
 nx_ctx->csbcpb = ((void*)0);
 nx_ctx->csbcpb_aead = ((void*)0);
 nx_ctx->in_sg = ((void*)0);
 nx_ctx->out_sg = ((void*)0);
}
