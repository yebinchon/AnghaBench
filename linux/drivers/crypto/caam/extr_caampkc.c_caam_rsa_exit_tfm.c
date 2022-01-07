
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_akcipher {int dummy; } ;
struct caam_rsa_key {int dummy; } ;
struct caam_rsa_ctx {int dev; int padding_dma; struct caam_rsa_key key; } ;


 scalar_t__ CAAM_RSA_MAX_INPUT_SIZE ;
 int DMA_TO_DEVICE ;
 struct caam_rsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int caam_jr_free (int ) ;
 int caam_rsa_free_key (struct caam_rsa_key*) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void caam_rsa_exit_tfm(struct crypto_akcipher *tfm)
{
 struct caam_rsa_ctx *ctx = akcipher_tfm_ctx(tfm);
 struct caam_rsa_key *key = &ctx->key;

 dma_unmap_single(ctx->dev, ctx->padding_dma, CAAM_RSA_MAX_INPUT_SIZE -
    1, DMA_TO_DEVICE);
 caam_rsa_free_key(key);
 caam_jr_free(ctx->dev);
}
