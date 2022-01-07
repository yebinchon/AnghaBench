
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_sha_reqctx {int digest_size; int context_size; scalar_t__ active; int mode; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 int EINVAL ;
 int SAHARA_HDR_MDHA_ALG_SHA1 ;
 int SAHARA_HDR_MDHA_ALG_SHA256 ;


 struct sahara_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int memset (struct sahara_sha_reqctx*,int ,int) ;

__attribute__((used)) static int sahara_sha_init(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct sahara_sha_reqctx *rctx = ahash_request_ctx(req);

 memset(rctx, 0, sizeof(*rctx));

 switch (crypto_ahash_digestsize(tfm)) {
 case 129:
  rctx->mode |= SAHARA_HDR_MDHA_ALG_SHA1;
  rctx->digest_size = 129;
  break;
 case 128:
  rctx->mode |= SAHARA_HDR_MDHA_ALG_SHA256;
  rctx->digest_size = 128;
  break;
 default:
  return -EINVAL;
 }

 rctx->context_size = rctx->digest_size + 4;
 rctx->active = 0;

 return 0;
}
