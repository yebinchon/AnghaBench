
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_ahash_req {int block_sz; int state_sz; int digest; } ;
struct safexcel_ahash_ctx {int alg; } ;
struct ahash_request {int dummy; } ;


 int CONTEXT_CONTROL_CRYPTO_ALG_SHA224 ;
 int CONTEXT_CONTROL_DIGEST_PRECOMPUTED ;
 int SHA256_BLOCK_SIZE ;
 int SHA256_DIGEST_SIZE ;
 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 struct safexcel_ahash_ctx* crypto_ahash_ctx (int ) ;
 int crypto_ahash_reqtfm (struct ahash_request*) ;
 int memset (struct safexcel_ahash_req*,int ,int) ;

__attribute__((used)) static int safexcel_sha224_init(struct ahash_request *areq)
{
 struct safexcel_ahash_ctx *ctx = crypto_ahash_ctx(crypto_ahash_reqtfm(areq));
 struct safexcel_ahash_req *req = ahash_request_ctx(areq);

 memset(req, 0, sizeof(*req));

 ctx->alg = CONTEXT_CONTROL_CRYPTO_ALG_SHA224;
 req->digest = CONTEXT_CONTROL_DIGEST_PRECOMPUTED;
 req->state_sz = SHA256_DIGEST_SIZE;
 req->block_sz = SHA256_BLOCK_SIZE;

 return 0;
}
