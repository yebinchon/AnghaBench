
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {scalar_t__ digcnt; struct s5p_aes_dev* dd; } ;
struct s5p_aes_dev {int dev; } ;
struct ahash_request {int dummy; } ;


 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int s5p_hash_copy_result (struct ahash_request*) ;

__attribute__((used)) static void s5p_hash_finish(struct ahash_request *req)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);
 struct s5p_aes_dev *dd = ctx->dd;

 if (ctx->digcnt)
  s5p_hash_copy_result(req);

 dev_dbg(dd->dev, "hash_finish digcnt: %lld\n", ctx->digcnt);
}
