
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iproc_reqctx_s {int is_sw_hmac; unsigned int hash_carry_len; unsigned int total_todo; int hash_carry; } ;
struct TYPE_5__ {int mode; } ;
struct iproc_ctx_s {int ipad; TYPE_2__ auth; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int nbytes; } ;
struct TYPE_4__ {scalar_t__ spu_type; } ;
struct TYPE_6__ {TYPE_1__ spu; } ;


 int HASH_MODE_HASH ;
 int HASH_MODE_HMAC ;
 scalar_t__ SPU_TYPE_SPU2 ;
 int __ahash_finup (struct ahash_request*) ;
 int __ahash_init (struct ahash_request*) ;
 struct iproc_reqctx_s* ahash_request_ctx (struct ahash_request*) ;
 struct iproc_ctx_s* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;
 int flow_log (char*,int ) ;
 TYPE_3__ iproc_priv ;
 int memcpy (int ,int ,unsigned int) ;

__attribute__((used)) static int ahash_hmac_digest(struct ahash_request *req)
{
 struct iproc_reqctx_s *rctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct iproc_ctx_s *ctx = crypto_ahash_ctx(tfm);
 unsigned int blocksize =
   crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));

 flow_log("ahash_hmac_digest() nbytes:%u\n", req->nbytes);


 __ahash_init(req);

 if (iproc_priv.spu.spu_type == SPU_TYPE_SPU2) {
  rctx->is_sw_hmac = 0;
  ctx->auth.mode = HASH_MODE_HMAC;
 } else {
  rctx->is_sw_hmac = 1;
  ctx->auth.mode = HASH_MODE_HASH;

  memcpy(rctx->hash_carry, ctx->ipad, blocksize);
  rctx->hash_carry_len = blocksize;
  rctx->total_todo += blocksize;
 }

 return __ahash_finup(req);
}
