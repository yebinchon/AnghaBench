
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int keylen; } ;
struct caam_ctx {int dir; int sh_desc_dec_dma; int authsize; int adata; TYPE_1__ cdata; int * sh_desc_dec; int sh_desc_enc_dma; int * sh_desc_enc; struct device* jrdev; } ;


 int cnstr_shdsc_chachapoly (int *,TYPE_1__*,int *,unsigned int,int ,int,int) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 int desc_bytes (int *) ;
 int dma_sync_single_for_device (struct device*,int ,int ,int ) ;

__attribute__((used)) static int chachapoly_set_sh_desc(struct crypto_aead *aead)
{
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 struct device *jrdev = ctx->jrdev;
 unsigned int ivsize = crypto_aead_ivsize(aead);
 u32 *desc;

 if (!ctx->cdata.keylen || !ctx->authsize)
  return 0;

 desc = ctx->sh_desc_enc;
 cnstr_shdsc_chachapoly(desc, &ctx->cdata, &ctx->adata, ivsize,
          ctx->authsize, 1, 0);
 dma_sync_single_for_device(jrdev, ctx->sh_desc_enc_dma,
       desc_bytes(desc), ctx->dir);

 desc = ctx->sh_desc_dec;
 cnstr_shdsc_chachapoly(desc, &ctx->cdata, &ctx->adata, ivsize,
          ctx->authsize, 0, 0);
 dma_sync_single_for_device(jrdev, ctx->sh_desc_dec_dma,
       desc_bytes(desc), ctx->dir);

 return 0;
}
