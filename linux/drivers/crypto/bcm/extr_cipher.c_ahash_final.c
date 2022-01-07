
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iproc_ctx_s {TYPE_1__* shash; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int result; } ;
struct TYPE_3__ {int tfm; } ;


 int __ahash_final (struct ahash_request*) ;
 struct iproc_ctx_s* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_free_shash (int ) ;
 int crypto_shash_final (TYPE_1__*,int ) ;
 int kfree (TYPE_1__*) ;
 scalar_t__ spu_no_incr_hash (struct iproc_ctx_s*) ;

__attribute__((used)) static int ahash_final(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct iproc_ctx_s *ctx = crypto_ahash_ctx(tfm);
 int ret;

 if (spu_no_incr_hash(ctx)) {





  ret = crypto_shash_final(ctx->shash, req->result);


  crypto_free_shash(ctx->shash->tfm);
  kfree(ctx->shash);

 } else {

  ret = __ahash_final(req);
 }

 return ret;
}
