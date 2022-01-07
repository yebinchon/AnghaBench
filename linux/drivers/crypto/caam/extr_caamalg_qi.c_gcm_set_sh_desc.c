
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct TYPE_3__ {int keylen; int key_inline; int key_dma; int key_virt; } ;
struct caam_ctx {int authsize; TYPE_1__ cdata; int sh_desc_dec; int key_dma; int key; int sh_desc_enc; } ;


 int CAAM_DESC_BYTES_MAX ;
 int DESC_JOB_IO_LEN ;
 int DESC_QI_GCM_DEC_LEN ;
 int DESC_QI_GCM_ENC_LEN ;
 int cnstr_shdsc_gcm_decap (int ,TYPE_1__*,unsigned int,int ,int) ;
 int cnstr_shdsc_gcm_encap (int ,TYPE_1__*,unsigned int,int ,int) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;

__attribute__((used)) static int gcm_set_sh_desc(struct crypto_aead *aead)
{
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 unsigned int ivsize = crypto_aead_ivsize(aead);
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

 cnstr_shdsc_gcm_encap(ctx->sh_desc_enc, &ctx->cdata, ivsize,
         ctx->authsize, 1);





 if (rem_bytes >= DESC_QI_GCM_DEC_LEN) {
  ctx->cdata.key_inline = 1;
  ctx->cdata.key_virt = ctx->key;
 } else {
  ctx->cdata.key_inline = 0;
  ctx->cdata.key_dma = ctx->key_dma;
 }

 cnstr_shdsc_gcm_decap(ctx->sh_desc_dec, &ctx->cdata, ivsize,
         ctx->authsize, 1);

 return 0;
}
