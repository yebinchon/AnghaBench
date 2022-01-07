
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {unsigned int keylen; int key_inline; int const* key_virt; } ;
struct caam_ctx {int dir; int sh_desc_dec_dma; TYPE_1__ cdata; int * sh_desc_dec; int sh_desc_enc_dma; int * sh_desc_enc; struct device* jrdev; } ;


 int AES_MAX_KEY_SIZE ;
 int AES_MIN_KEY_SIZE ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int cnstr_shdsc_xts_skcipher_decap (int *,TYPE_1__*) ;
 int cnstr_shdsc_xts_skcipher_encap (int *,TYPE_1__*) ;
 struct caam_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int desc_bytes (int *) ;
 int dev_err (struct device*,char*) ;
 int dma_sync_single_for_device (struct device*,int ,int ,int ) ;

__attribute__((used)) static int xts_skcipher_setkey(struct crypto_skcipher *skcipher, const u8 *key,
          unsigned int keylen)
{
 struct caam_ctx *ctx = crypto_skcipher_ctx(skcipher);
 struct device *jrdev = ctx->jrdev;
 u32 *desc;

 if (keylen != 2 * AES_MIN_KEY_SIZE && keylen != 2 * AES_MAX_KEY_SIZE) {
  crypto_skcipher_set_flags(skcipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  dev_err(jrdev, "key size mismatch\n");
  return -EINVAL;
 }

 ctx->cdata.keylen = keylen;
 ctx->cdata.key_virt = key;
 ctx->cdata.key_inline = 1;


 desc = ctx->sh_desc_enc;
 cnstr_shdsc_xts_skcipher_encap(desc, &ctx->cdata);
 dma_sync_single_for_device(jrdev, ctx->sh_desc_enc_dma,
       desc_bytes(desc), ctx->dir);


 desc = ctx->sh_desc_dec;
 cnstr_shdsc_xts_skcipher_decap(desc, &ctx->cdata);
 dma_sync_single_for_device(jrdev, ctx->sh_desc_dec_dma,
       desc_bytes(desc), ctx->dir);

 return 0;
}
