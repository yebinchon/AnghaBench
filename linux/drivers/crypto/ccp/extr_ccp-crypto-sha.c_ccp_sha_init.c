
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_ahash {int dummy; } ;
struct ccp_sha_req_ctx {int first; unsigned int buf_count; int buf; int type; } ;
struct TYPE_3__ {int ipad; scalar_t__ key_len; } ;
struct TYPE_4__ {TYPE_1__ sha; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct ccp_crypto_ahash_alg {int type; } ;
struct ahash_request {int dummy; } ;


 struct ccp_sha_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct ccp_crypto_ahash_alg* ccp_crypto_ahash_alg (int ) ;
 struct ccp_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;
 int memcpy (int ,int ,unsigned int) ;
 int memset (struct ccp_sha_req_ctx*,int ,int) ;

__attribute__((used)) static int ccp_sha_init(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct ccp_ctx *ctx = crypto_ahash_ctx(tfm);
 struct ccp_sha_req_ctx *rctx = ahash_request_ctx(req);
 struct ccp_crypto_ahash_alg *alg =
  ccp_crypto_ahash_alg(crypto_ahash_tfm(tfm));
 unsigned int block_size =
  crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));

 memset(rctx, 0, sizeof(*rctx));

 rctx->type = alg->type;
 rctx->first = 1;

 if (ctx->u.sha.key_len) {

  memcpy(rctx->buf, ctx->u.sha.ipad, block_size);
  rctx->buf_count = block_size;
 }

 return 0;
}
