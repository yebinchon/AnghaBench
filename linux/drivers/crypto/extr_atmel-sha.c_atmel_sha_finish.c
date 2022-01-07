
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int bufcnt; scalar_t__* digcnt; struct atmel_sha_dev* dd; } ;
struct atmel_sha_dev {int dev; } ;
struct ahash_request {int dummy; } ;


 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_copy_ready_hash (struct ahash_request*) ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int atmel_sha_finish(struct ahash_request *req)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 struct atmel_sha_dev *dd = ctx->dd;

 if (ctx->digcnt[0] || ctx->digcnt[1])
  atmel_sha_copy_ready_hash(req);

 dev_dbg(dd->dev, "digcnt: 0x%llx 0x%llx, bufcnt: %zd\n", ctx->digcnt[1],
  ctx->digcnt[0], ctx->bufcnt);

 return 0;
}
