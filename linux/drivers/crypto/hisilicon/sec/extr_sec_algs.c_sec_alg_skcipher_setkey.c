
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sec_alg_tfm_ctx {int lock; scalar_t__ key; int pkey; TYPE_2__* queue; } ;
struct device {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
typedef enum sec_cipher_alg { ____Placeholder_sec_cipher_alg } sec_cipher_alg ;
struct TYPE_4__ {TYPE_1__* dev_info; } ;
struct TYPE_3__ {struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SEC_MAX_CIPHER_KEY ;
 struct sec_alg_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 scalar_t__ dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int memset (scalar_t__,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sec_alg_skcipher_init_context (struct crypto_skcipher*,int const*,unsigned int,int) ;

__attribute__((used)) static int sec_alg_skcipher_setkey(struct crypto_skcipher *tfm,
       const u8 *key, unsigned int keylen,
       enum sec_cipher_alg alg)
{
 struct sec_alg_tfm_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct device *dev = ctx->queue->dev_info->dev;

 mutex_lock(&ctx->lock);
 if (ctx->key) {

  memset(ctx->key, 0, SEC_MAX_CIPHER_KEY);
 } else {

  ctx->key = dma_alloc_coherent(dev, SEC_MAX_CIPHER_KEY,
           &ctx->pkey, GFP_KERNEL);
  if (!ctx->key) {
   mutex_unlock(&ctx->lock);
   return -ENOMEM;
  }
 }
 mutex_unlock(&ctx->lock);
 sec_alg_skcipher_init_context(tfm, key, keylen, alg);

 return 0;
}
