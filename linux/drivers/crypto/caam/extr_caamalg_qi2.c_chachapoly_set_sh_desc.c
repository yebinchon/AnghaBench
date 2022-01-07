
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct caam_flc {void** flc; int * sh_desc; } ;
struct TYPE_2__ {int keylen; } ;
struct caam_ctx {int dir; int * flc_dma; int authsize; int adata; TYPE_1__ cdata; struct caam_flc* flc; struct device* dev; } ;


 size_t DECRYPT ;
 size_t ENCRYPT ;
 int cnstr_shdsc_chachapoly (int *,TYPE_1__*,int *,unsigned int,int ,int,int) ;
 void* cpu_to_caam32 (int ) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 int desc_bytes (int *) ;
 int desc_len (int *) ;
 int dma_sync_single_for_device (struct device*,int ,int,int ) ;

__attribute__((used)) static int chachapoly_set_sh_desc(struct crypto_aead *aead)
{
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 unsigned int ivsize = crypto_aead_ivsize(aead);
 struct device *dev = ctx->dev;
 struct caam_flc *flc;
 u32 *desc;

 if (!ctx->cdata.keylen || !ctx->authsize)
  return 0;

 flc = &ctx->flc[ENCRYPT];
 desc = flc->sh_desc;
 cnstr_shdsc_chachapoly(desc, &ctx->cdata, &ctx->adata, ivsize,
          ctx->authsize, 1, 1);
 flc->flc[1] = cpu_to_caam32(desc_len(desc));
 dma_sync_single_for_device(dev, ctx->flc_dma[ENCRYPT],
       sizeof(flc->flc) + desc_bytes(desc),
       ctx->dir);

 flc = &ctx->flc[DECRYPT];
 desc = flc->sh_desc;
 cnstr_shdsc_chachapoly(desc, &ctx->cdata, &ctx->adata, ivsize,
          ctx->authsize, 0, 1);
 flc->flc[1] = cpu_to_caam32(desc_len(desc));
 dma_sync_single_for_device(dev, ctx->flc_dma[DECRYPT],
       sizeof(flc->flc) + desc_bytes(desc),
       ctx->dir);

 return 0;
}
