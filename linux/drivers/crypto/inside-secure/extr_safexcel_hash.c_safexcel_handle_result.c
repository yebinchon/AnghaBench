
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_crypto_priv {int flags; } ;
struct safexcel_ahash_req {int needs_inv; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {int dummy; } ;


 int BUG_ON (int) ;
 int EIP197_TRC_CACHE ;
 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int safexcel_handle_inv_result (struct safexcel_crypto_priv*,int,struct crypto_async_request*,int*,int*) ;
 int safexcel_handle_req_result (struct safexcel_crypto_priv*,int,struct crypto_async_request*,int*,int*) ;

__attribute__((used)) static int safexcel_handle_result(struct safexcel_crypto_priv *priv, int ring,
      struct crypto_async_request *async,
      bool *should_complete, int *ret)
{
 struct ahash_request *areq = ahash_request_cast(async);
 struct safexcel_ahash_req *req = ahash_request_ctx(areq);
 int err;

 BUG_ON(!(priv->flags & EIP197_TRC_CACHE) && req->needs_inv);

 if (req->needs_inv) {
  req->needs_inv = 0;
  err = safexcel_handle_inv_result(priv, ring, async,
       should_complete, ret);
 } else {
  err = safexcel_handle_req_result(priv, ring, async,
       should_complete, ret);
 }

 return err;
}
