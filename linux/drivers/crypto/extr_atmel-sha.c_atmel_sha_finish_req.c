
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int flags; struct atmel_sha_dev* dd; } ;
struct atmel_sha_dev {int flags; } ;
struct ahash_request {int dummy; } ;


 int SHA_FLAGS_ERROR ;
 int SHA_FLAGS_FINAL ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_complete (struct atmel_sha_dev*,int) ;
 int atmel_sha_copy_hash (struct ahash_request*) ;
 int atmel_sha_finish (struct ahash_request*) ;

__attribute__((used)) static void atmel_sha_finish_req(struct ahash_request *req, int err)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 struct atmel_sha_dev *dd = ctx->dd;

 if (!err) {
  atmel_sha_copy_hash(req);
  if (SHA_FLAGS_FINAL & dd->flags)
   err = atmel_sha_finish(req);
 } else {
  ctx->flags |= SHA_FLAGS_ERROR;
 }


 (void)atmel_sha_complete(dd, err);
}
