
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sec_alg_tfm_ctx {TYPE_2__* queue; int pkey; scalar_t__ key; } ;
struct device {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev_info; } ;
struct TYPE_3__ {struct device* dev; } ;


 int SEC_MAX_CIPHER_KEY ;
 struct sec_alg_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int dma_free_coherent (struct device*,int ,scalar_t__,int ) ;
 int memzero_explicit (scalar_t__,int ) ;
 int sec_queue_stop_release (TYPE_2__*) ;

__attribute__((used)) static void sec_alg_skcipher_exit(struct crypto_skcipher *tfm)
{
 struct sec_alg_tfm_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct device *dev = ctx->queue->dev_info->dev;

 if (ctx->key) {
  memzero_explicit(ctx->key, SEC_MAX_CIPHER_KEY);
  dma_free_coherent(dev, SEC_MAX_CIPHER_KEY, ctx->key,
      ctx->pkey);
 }
 sec_queue_stop_release(ctx->queue);
}
