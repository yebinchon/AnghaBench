
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_crypto_info {int (* enqueue ) (struct rk_crypto_info*,TYPE_1__*) ;} ;
struct rk_ahash_ctx {struct rk_crypto_info* dev; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; int nbytes; } ;


 struct rk_ahash_ctx* crypto_tfm_ctx (int ) ;
 int stub1 (struct rk_crypto_info*,TYPE_1__*) ;
 int zero_message_process (struct ahash_request*) ;

__attribute__((used)) static int rk_ahash_digest(struct ahash_request *req)
{
 struct rk_ahash_ctx *tctx = crypto_tfm_ctx(req->base.tfm);
 struct rk_crypto_info *dev = tctx->dev;

 if (!req->nbytes)
  return zero_message_process(req);
 else
  return dev->enqueue(dev, &req->base);
}
