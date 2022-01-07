
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {unsigned int keylen; } ;
struct cc_hash_ctx {int is_hmac; TYPE_1__ key_params; int opad_tmp_keys_dma_addr; scalar_t__ opad_tmp_keys_buff; int drvdata; } ;





 scalar_t__ CC_AES_KEY_SIZE_MAX ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 int dma_sync_single_for_cpu (struct device*,int ,unsigned int,int ) ;
 int dma_sync_single_for_device (struct device*,int ,unsigned int,int ) ;
 struct device* drvdata_to_dev (int ) ;
 int memcpy (scalar_t__,int const*,unsigned int) ;
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int cc_cmac_setkey(struct crypto_ahash *ahash,
     const u8 *key, unsigned int keylen)
{
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(ahash);
 struct device *dev = drvdata_to_dev(ctx->drvdata);

 dev_dbg(dev, "===== setkey (%d) ====\n", keylen);

 ctx->is_hmac = 1;

 switch (keylen) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 ctx->key_params.keylen = keylen;



 dma_sync_single_for_cpu(dev, ctx->opad_tmp_keys_dma_addr,
    keylen, DMA_TO_DEVICE);

 memcpy(ctx->opad_tmp_keys_buff, key, keylen);
 if (keylen == 24) {
  memset(ctx->opad_tmp_keys_buff + 24, 0,
         CC_AES_KEY_SIZE_MAX - 24);
 }

 dma_sync_single_for_device(dev, ctx->opad_tmp_keys_dma_addr,
       keylen, DMA_TO_DEVICE);

 ctx->key_params.keylen = keylen;

 return 0;
}
