
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int flags; } ;
struct ahash_request {int dummy; } ;


 int SHA_FLAGS_ERROR ;
 int SHA_FLAGS_FINUP ;
 int SHA_FLAGS_PAD ;
 int SHA_OP_FINAL ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_enqueue (struct ahash_request*,int ) ;
 int atmel_sha_finish (struct ahash_request*) ;

__attribute__((used)) static int atmel_sha_final(struct ahash_request *req)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);

 ctx->flags |= SHA_FLAGS_FINUP;

 if (ctx->flags & SHA_FLAGS_ERROR)
  return 0;

 if (ctx->flags & SHA_FLAGS_PAD)

  return atmel_sha_finish(req);

 return atmel_sha_enqueue(req, SHA_OP_FINAL);
}
