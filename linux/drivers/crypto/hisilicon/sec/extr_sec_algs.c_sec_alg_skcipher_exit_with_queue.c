
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec_alg_tfm_ctx {TYPE_1__* queue; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_2__ {int softqueue; } ;


 struct sec_alg_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int kfifo_free (int *) ;
 int sec_alg_skcipher_exit (struct crypto_skcipher*) ;

__attribute__((used)) static void sec_alg_skcipher_exit_with_queue(struct crypto_skcipher *tfm)
{
 struct sec_alg_tfm_ctx *ctx = crypto_skcipher_ctx(tfm);

 kfifo_free(&ctx->queue->softqueue);
 sec_alg_skcipher_exit(tfm);
}
