
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct talitos_private {int dummy; } ;
struct talitos_edesc {int dummy; } ;
struct talitos_ctx {int dev; } ;
struct talitos_ahash_req_ctx {int psrc; scalar_t__ nbuf; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {TYPE_1__ base; } ;


 struct talitos_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct talitos_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 struct talitos_private* dev_get_drvdata (int ) ;
 int has_ftr_sec1 (struct talitos_private*) ;
 struct talitos_edesc* talitos_edesc_alloc (int ,int ,int *,int *,int ,unsigned int,int ,int ,int ,int ,int) ;

__attribute__((used)) static struct talitos_edesc *ahash_edesc_alloc(struct ahash_request *areq,
            unsigned int nbytes)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_ahash_ctx(tfm);
 struct talitos_ahash_req_ctx *req_ctx = ahash_request_ctx(areq);
 struct talitos_private *priv = dev_get_drvdata(ctx->dev);
 bool is_sec1 = has_ftr_sec1(priv);

 if (is_sec1)
  nbytes -= req_ctx->nbuf;

 return talitos_edesc_alloc(ctx->dev, req_ctx->psrc, ((void*)0), ((void*)0), 0,
       nbytes, 0, 0, 0, areq->base.flags, 0);
}
