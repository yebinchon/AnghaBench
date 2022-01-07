
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_3__ {int keylen; int key_inline; int key_dma; int key_virt; } ;
struct caam_ctx {int dir; int sh_desc_dec_dma; int authsize; TYPE_1__ cdata; int * sh_desc_dec; int key_dma; int key; int sh_desc_enc_dma; int * sh_desc_enc; struct device* jrdev; } ;


 int CAAM_DESC_BYTES_MAX ;
 int DESC_GCM_DEC_LEN ;
 int DESC_GCM_ENC_LEN ;
 int GCM_DESC_JOB_IO_LEN ;
 int cnstr_shdsc_gcm_decap (int *,TYPE_1__*,unsigned int,int ,int) ;
 int cnstr_shdsc_gcm_encap (int *,TYPE_1__*,unsigned int,int ,int) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 int desc_bytes (int *) ;
 int dma_sync_single_for_device (struct device*,int ,int ,int ) ;

__attribute__((used)) static int gcm_set_sh_desc(struct crypto_aead *aead)
{
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 struct device *jrdev = ctx->jrdev;
 unsigned int ivsize = crypto_aead_ivsize(aead);
 u32 *desc;
 int rem_bytes = CAAM_DESC_BYTES_MAX - GCM_DESC_JOB_IO_LEN -
   ctx->cdata.keylen;

 if (!ctx->cdata.keylen || !ctx->authsize)
  return 0;






 if (rem_bytes >= DESC_GCM_ENC_LEN) {
  ctx->cdata.key_inline = 1;
  ctx->cdata.key_virt = ctx->key;
 } else {
  ctx->cdata.key_inline = 0;
  ctx->cdata.key_dma = ctx->key_dma;
 }

 desc = ctx->sh_desc_enc;
 cnstr_shdsc_gcm_encap(desc, &ctx->cdata, ivsize, ctx->authsize, 0);
 dma_sync_single_for_device(jrdev, ctx->sh_desc_enc_dma,
       desc_bytes(desc), ctx->dir);





 if (rem_bytes >= DESC_GCM_DEC_LEN) {
  ctx->cdata.key_inline = 1;
  ctx->cdata.key_virt = ctx->key;
 } else {
  ctx->cdata.key_inline = 0;
  ctx->cdata.key_dma = ctx->key_dma;
 }

 desc = ctx->sh_desc_dec;
 cnstr_shdsc_gcm_decap(desc, &ctx->cdata, ivsize, ctx->authsize, 0);
 dma_sync_single_for_device(jrdev, ctx->sh_desc_dec_dma,
       desc_bytes(desc), ctx->dir);

 return 0;
}
