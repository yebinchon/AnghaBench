
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_akcipher {int dummy; } ;
struct caam_rsa_ctx {int dev; int padding_dma; } ;


 scalar_t__ CAAM_RSA_MAX_INPUT_SIZE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct caam_rsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int caam_jr_alloc () ;
 int caam_jr_free (int ) ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int pr_err (char*) ;
 int zero_buffer ;

__attribute__((used)) static int caam_rsa_init_tfm(struct crypto_akcipher *tfm)
{
 struct caam_rsa_ctx *ctx = akcipher_tfm_ctx(tfm);

 ctx->dev = caam_jr_alloc();

 if (IS_ERR(ctx->dev)) {
  pr_err("Job Ring Device allocation for transform failed\n");
  return PTR_ERR(ctx->dev);
 }

 ctx->padding_dma = dma_map_single(ctx->dev, zero_buffer,
       CAAM_RSA_MAX_INPUT_SIZE - 1,
       DMA_TO_DEVICE);
 if (dma_mapping_error(ctx->dev, ctx->padding_dma)) {
  dev_err(ctx->dev, "unable to map padding\n");
  caam_jr_free(ctx->dev);
  return -ENOMEM;
 }

 return 0;
}
