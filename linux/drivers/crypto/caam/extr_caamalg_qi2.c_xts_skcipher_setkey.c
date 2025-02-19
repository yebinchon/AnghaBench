
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct caam_flc {void** flc; int * sh_desc; } ;
struct TYPE_3__ {unsigned int keylen; int key_inline; int const* key_virt; } ;
struct caam_ctx {int dir; int * flc_dma; TYPE_1__ cdata; struct caam_flc* flc; struct device* dev; } ;


 int AES_MAX_KEY_SIZE ;
 int AES_MIN_KEY_SIZE ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 size_t DECRYPT ;
 int EINVAL ;
 size_t ENCRYPT ;
 int cnstr_shdsc_xts_skcipher_decap (int *,TYPE_1__*) ;
 int cnstr_shdsc_xts_skcipher_encap (int *,TYPE_1__*) ;
 void* cpu_to_caam32 (int ) ;
 struct caam_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int desc_bytes (int *) ;
 int desc_len (int *) ;
 int dev_err (struct device*,char*) ;
 int dma_sync_single_for_device (struct device*,int ,int,int ) ;

__attribute__((used)) static int xts_skcipher_setkey(struct crypto_skcipher *skcipher, const u8 *key,
          unsigned int keylen)
{
 struct caam_ctx *ctx = crypto_skcipher_ctx(skcipher);
 struct device *dev = ctx->dev;
 struct caam_flc *flc;
 u32 *desc;

 if (keylen != 2 * AES_MIN_KEY_SIZE && keylen != 2 * AES_MAX_KEY_SIZE) {
  dev_err(dev, "key size mismatch\n");
  crypto_skcipher_set_flags(skcipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 ctx->cdata.keylen = keylen;
 ctx->cdata.key_virt = key;
 ctx->cdata.key_inline = 1;


 flc = &ctx->flc[ENCRYPT];
 desc = flc->sh_desc;
 cnstr_shdsc_xts_skcipher_encap(desc, &ctx->cdata);
 flc->flc[1] = cpu_to_caam32(desc_len(desc));
 dma_sync_single_for_device(dev, ctx->flc_dma[ENCRYPT],
       sizeof(flc->flc) + desc_bytes(desc),
       ctx->dir);


 flc = &ctx->flc[DECRYPT];
 desc = flc->sh_desc;
 cnstr_shdsc_xts_skcipher_decap(desc, &ctx->cdata);
 flc->flc[1] = cpu_to_caam32(desc_len(desc));
 dma_sync_single_for_device(dev, ctx->flc_dma[DECRYPT],
       sizeof(flc->flc) + desc_bytes(desc),
       ctx->dir);

 return 0;
}
