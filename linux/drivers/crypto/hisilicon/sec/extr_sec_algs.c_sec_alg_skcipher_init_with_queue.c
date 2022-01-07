
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec_alg_tfm_ctx {TYPE_1__* queue; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_2__ {int havesoftqueue; int softqueue; } ;


 int GFP_KERNEL ;
 int INIT_KFIFO (int ) ;
 struct sec_alg_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int kfifo_alloc (int *,int,int ) ;
 int sec_alg_skcipher_exit (struct crypto_skcipher*) ;
 int sec_alg_skcipher_init (struct crypto_skcipher*) ;

__attribute__((used)) static int sec_alg_skcipher_init_with_queue(struct crypto_skcipher *tfm)
{
 struct sec_alg_tfm_ctx *ctx = crypto_skcipher_ctx(tfm);
 int ret;

 ret = sec_alg_skcipher_init(tfm);
 if (ret)
  return ret;

 INIT_KFIFO(ctx->queue->softqueue);
 ret = kfifo_alloc(&ctx->queue->softqueue, 512, GFP_KERNEL);
 if (ret) {
  sec_alg_skcipher_exit(tfm);
  return ret;
 }
 ctx->queue->havesoftqueue = 1;

 return 0;
}
