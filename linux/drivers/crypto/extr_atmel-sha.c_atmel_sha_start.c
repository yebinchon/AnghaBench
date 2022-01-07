
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {scalar_t__ op; int flags; } ;
struct atmel_sha_dev {int dev; int resume; struct ahash_request* req; } ;
struct ahash_request {int nbytes; } ;


 int SHA_FLAGS_FINUP ;
 scalar_t__ SHA_OP_FINAL ;
 scalar_t__ SHA_OP_UPDATE ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_complete (struct atmel_sha_dev*,int) ;
 int atmel_sha_done ;
 int atmel_sha_final_req (struct atmel_sha_dev*) ;
 int atmel_sha_finish_req (struct ahash_request*,int) ;
 int atmel_sha_hw_init (struct atmel_sha_dev*) ;
 int atmel_sha_update_req (struct atmel_sha_dev*) ;
 int dev_dbg (int ,char*,int,...) ;

__attribute__((used)) static int atmel_sha_start(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 int err;

 dev_dbg(dd->dev, "handling new req, op: %lu, nbytes: %d\n",
      ctx->op, req->nbytes);

 err = atmel_sha_hw_init(dd);
 if (err)
  return atmel_sha_complete(dd, err);
 dd->resume = atmel_sha_done;
 if (ctx->op == SHA_OP_UPDATE) {
  err = atmel_sha_update_req(dd);
  if (!err && (ctx->flags & SHA_FLAGS_FINUP))

   err = atmel_sha_final_req(dd);
 } else if (ctx->op == SHA_OP_FINAL) {
  err = atmel_sha_final_req(dd);
 }

 if (!err)

  atmel_sha_finish_req(req, err);

 dev_dbg(dd->dev, "exit, err: %d\n", err);

 return err;
}
