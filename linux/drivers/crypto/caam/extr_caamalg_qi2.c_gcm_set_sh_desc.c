
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct caam_flc {void** flc; int * sh_desc; } ;
struct TYPE_3__ {int keylen; int key_inline; int key_dma; int key_virt; } ;
struct caam_ctx {int dir; int * flc_dma; int authsize; TYPE_1__ cdata; struct caam_flc* flc; int key_dma; int key; struct device* dev; } ;


 int CAAM_DESC_BYTES_MAX ;
 size_t DECRYPT ;
 int DESC_JOB_IO_LEN ;
 int DESC_QI_GCM_DEC_LEN ;
 int DESC_QI_GCM_ENC_LEN ;
 size_t ENCRYPT ;
 int cnstr_shdsc_gcm_decap (int *,TYPE_1__*,unsigned int,int ,int) ;
 int cnstr_shdsc_gcm_encap (int *,TYPE_1__*,unsigned int,int ,int) ;
 void* cpu_to_caam32 (int ) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 int desc_bytes (int *) ;
 int desc_len (int *) ;
 int dma_sync_single_for_device (struct device*,int ,int,int ) ;

__attribute__((used)) static int gcm_set_sh_desc(struct crypto_aead *aead)
{
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 struct device *dev = ctx->dev;
 unsigned int ivsize = crypto_aead_ivsize(aead);
 struct caam_flc *flc;
 u32 *desc;
 int rem_bytes = CAAM_DESC_BYTES_MAX - DESC_JOB_IO_LEN -
   ctx->cdata.keylen;

 if (!ctx->cdata.keylen || !ctx->authsize)
  return 0;






 if (rem_bytes >= DESC_QI_GCM_ENC_LEN) {
  ctx->cdata.key_inline = 1;
  ctx->cdata.key_virt = ctx->key;
 } else {
  ctx->cdata.key_inline = 0;
  ctx->cdata.key_dma = ctx->key_dma;
 }

 flc = &ctx->flc[ENCRYPT];
 desc = flc->sh_desc;
 cnstr_shdsc_gcm_encap(desc, &ctx->cdata, ivsize, ctx->authsize, 1);
 flc->flc[1] = cpu_to_caam32(desc_len(desc));
 dma_sync_single_for_device(dev, ctx->flc_dma[ENCRYPT],
       sizeof(flc->flc) + desc_bytes(desc),
       ctx->dir);





 if (rem_bytes >= DESC_QI_GCM_DEC_LEN) {
  ctx->cdata.key_inline = 1;
  ctx->cdata.key_virt = ctx->key;
 } else {
  ctx->cdata.key_inline = 0;
  ctx->cdata.key_dma = ctx->key_dma;
 }

 flc = &ctx->flc[DECRYPT];
 desc = flc->sh_desc;
 cnstr_shdsc_gcm_decap(desc, &ctx->cdata, ivsize, ctx->authsize, 1);
 flc->flc[1] = cpu_to_caam32(desc_len(desc));
 dma_sync_single_for_device(dev, ctx->flc_dma[DECRYPT],
       sizeof(flc->flc) + desc_bytes(desc),
       ctx->dir);

 return 0;
}
