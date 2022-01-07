
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device {int parent; } ;
struct crypto_aead {int dummy; } ;
struct caam_drv_private {int era; } ;
struct TYPE_3__ {int keylen_pad; int key_inline; int key_dma; int key_virt; } ;
struct caam_ctx {int dir; int sh_desc_dec_dma; int authsize; TYPE_1__ adata; int * sh_desc_dec; int key_dma; int key; int sh_desc_enc_dma; int * sh_desc_enc; struct device* jrdev; } ;


 int AEAD_DESC_JOB_IO_LEN ;
 int CAAM_DESC_BYTES_MAX ;
 int DESC_AEAD_NULL_DEC_LEN ;
 int DESC_AEAD_NULL_ENC_LEN ;
 int cnstr_shdsc_aead_null_decap (int *,TYPE_1__*,int ,int ) ;
 int cnstr_shdsc_aead_null_encap (int *,TYPE_1__*,int ,int ) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int desc_bytes (int *) ;
 struct caam_drv_private* dev_get_drvdata (int ) ;
 int dma_sync_single_for_device (struct device*,int ,int ,int ) ;

__attribute__((used)) static int aead_null_set_sh_desc(struct crypto_aead *aead)
{
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 struct device *jrdev = ctx->jrdev;
 struct caam_drv_private *ctrlpriv = dev_get_drvdata(jrdev->parent);
 u32 *desc;
 int rem_bytes = CAAM_DESC_BYTES_MAX - AEAD_DESC_JOB_IO_LEN -
   ctx->adata.keylen_pad;





 if (rem_bytes >= DESC_AEAD_NULL_ENC_LEN) {
  ctx->adata.key_inline = 1;
  ctx->adata.key_virt = ctx->key;
 } else {
  ctx->adata.key_inline = 0;
  ctx->adata.key_dma = ctx->key_dma;
 }


 desc = ctx->sh_desc_enc;
 cnstr_shdsc_aead_null_encap(desc, &ctx->adata, ctx->authsize,
        ctrlpriv->era);
 dma_sync_single_for_device(jrdev, ctx->sh_desc_enc_dma,
       desc_bytes(desc), ctx->dir);





 if (rem_bytes >= DESC_AEAD_NULL_DEC_LEN) {
  ctx->adata.key_inline = 1;
  ctx->adata.key_virt = ctx->key;
 } else {
  ctx->adata.key_inline = 0;
  ctx->adata.key_dma = ctx->key_dma;
 }


 desc = ctx->sh_desc_dec;
 cnstr_shdsc_aead_null_decap(desc, &ctx->adata, ctx->authsize,
        ctrlpriv->era);
 dma_sync_single_for_device(jrdev, ctx->sh_desc_dec_dma,
       desc_bytes(desc), ctx->dir);

 return 0;
}
