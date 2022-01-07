
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sec_request {int dummy; } ;
struct sec_alg_tfm_ctx {TYPE_1__* queue; int backlog; int lock; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_4__ {int havesoftqueue; int queuelock; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 struct sec_alg_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_set_reqsize (struct crypto_skcipher*,int) ;
 int mutex_init (int *) ;
 TYPE_1__* sec_queue_alloc_start_safe () ;

__attribute__((used)) static int sec_alg_skcipher_init(struct crypto_skcipher *tfm)
{
 struct sec_alg_tfm_ctx *ctx = crypto_skcipher_ctx(tfm);

 mutex_init(&ctx->lock);
 INIT_LIST_HEAD(&ctx->backlog);
 crypto_skcipher_set_reqsize(tfm, sizeof(struct sec_request));

 ctx->queue = sec_queue_alloc_start_safe();
 if (IS_ERR(ctx->queue))
  return PTR_ERR(ctx->queue);

 mutex_init(&ctx->queue->queuelock);
 ctx->queue->havesoftqueue = 0;

 return 0;
}
