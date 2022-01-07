
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int dummy; } ;
struct ccp_aes_req_ctx {int iv; } ;
struct ablkcipher_request {int info; } ;


 int AES_BLOCK_SIZE ;
 struct ablkcipher_request* ablkcipher_request_cast (struct crypto_async_request*) ;
 struct ccp_aes_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ccp_aes_xts_complete(struct crypto_async_request *async_req, int ret)
{
 struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
 struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);

 if (ret)
  return ret;

 memcpy(req->info, rctx->iv, AES_BLOCK_SIZE);

 return 0;
}
