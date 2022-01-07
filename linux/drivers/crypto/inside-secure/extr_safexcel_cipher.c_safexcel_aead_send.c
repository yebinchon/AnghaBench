
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safexcel_crypto_priv {int flags; } ;
struct safexcel_cipher_req {int rdescs; scalar_t__ needs_inv; } ;
struct safexcel_cipher_ctx {struct safexcel_crypto_priv* priv; } ;
struct crypto_async_request {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int tfm; } ;
struct aead_request {int iv; int assoclen; int cryptlen; int dst; int src; TYPE_1__ base; } ;


 int BUG_ON (int) ;
 int EIP197_TRC_CACHE ;
 struct aead_request* aead_request_cast (struct crypto_async_request*) ;
 struct safexcel_cipher_req* aead_request_ctx (struct aead_request*) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (int ) ;
 int safexcel_cipher_send_inv (struct crypto_async_request*,int,int*,int*) ;
 int safexcel_send_req (struct crypto_async_request*,int,struct safexcel_cipher_req*,int ,int ,int ,int ,int ,int ,int*,int*) ;

__attribute__((used)) static int safexcel_aead_send(struct crypto_async_request *async, int ring,
         int *commands, int *results)
{
 struct aead_request *req = aead_request_cast(async);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 struct safexcel_cipher_req *sreq = aead_request_ctx(req);
 struct safexcel_crypto_priv *priv = ctx->priv;
 int ret;

 BUG_ON(!(priv->flags & EIP197_TRC_CACHE) && sreq->needs_inv);

 if (sreq->needs_inv)
  ret = safexcel_cipher_send_inv(async, ring, commands, results);
 else
  ret = safexcel_send_req(async, ring, sreq, req->src, req->dst,
     req->cryptlen, req->assoclen,
     crypto_aead_authsize(tfm), req->iv,
     commands, results);
 sreq->rdescs = *results;
 return ret;
}
