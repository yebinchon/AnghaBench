
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {unsigned int keylen; int key_inline; int const* key_virt; } ;
struct caam_ctx {int sh_desc_dec; scalar_t__* drv_ctx; int sh_desc_enc; TYPE_1__ cdata; struct device* jrdev; } ;


 int AES_MAX_KEY_SIZE ;
 int AES_MIN_KEY_SIZE ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 size_t DECRYPT ;
 int EINVAL ;
 size_t ENCRYPT ;
 int caam_drv_ctx_update (scalar_t__,int ) ;
 int cnstr_shdsc_xts_skcipher_decap (int ,TYPE_1__*) ;
 int cnstr_shdsc_xts_skcipher_encap (int ,TYPE_1__*) ;
 struct caam_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int xts_skcipher_setkey(struct crypto_skcipher *skcipher, const u8 *key,
          unsigned int keylen)
{
 struct caam_ctx *ctx = crypto_skcipher_ctx(skcipher);
 struct device *jrdev = ctx->jrdev;
 int ret = 0;

 if (keylen != 2 * AES_MIN_KEY_SIZE && keylen != 2 * AES_MAX_KEY_SIZE) {
  dev_err(jrdev, "key size mismatch\n");
  goto badkey;
 }

 ctx->cdata.keylen = keylen;
 ctx->cdata.key_virt = key;
 ctx->cdata.key_inline = 1;


 cnstr_shdsc_xts_skcipher_encap(ctx->sh_desc_enc, &ctx->cdata);
 cnstr_shdsc_xts_skcipher_decap(ctx->sh_desc_dec, &ctx->cdata);


 if (ctx->drv_ctx[ENCRYPT]) {
  ret = caam_drv_ctx_update(ctx->drv_ctx[ENCRYPT],
       ctx->sh_desc_enc);
  if (ret) {
   dev_err(jrdev, "driver enc context update failed\n");
   goto badkey;
  }
 }

 if (ctx->drv_ctx[DECRYPT]) {
  ret = caam_drv_ctx_update(ctx->drv_ctx[DECRYPT],
       ctx->sh_desc_dec);
  if (ret) {
   dev_err(jrdev, "driver dec context update failed\n");
   goto badkey;
  }
 }

 return ret;
badkey:
 crypto_skcipher_set_flags(skcipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 return -EINVAL;
}
