
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct talitos_edesc {int dummy; } ;
struct talitos_ctx {int dev; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ablkcipher_request {TYPE_1__ base; int nbytes; int info; int dst; int src; } ;


 struct talitos_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 unsigned int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct talitos_edesc* talitos_edesc_alloc (int ,int ,int ,int ,int ,int ,int ,unsigned int,int ,int ,int) ;

__attribute__((used)) static struct talitos_edesc *ablkcipher_edesc_alloc(struct ablkcipher_request *
          areq, bool encrypt)
{
 struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 unsigned int ivsize = crypto_ablkcipher_ivsize(cipher);

 return talitos_edesc_alloc(ctx->dev, areq->src, areq->dst,
       areq->info, 0, areq->nbytes, 0, ivsize, 0,
       areq->base.flags, encrypt);
}
