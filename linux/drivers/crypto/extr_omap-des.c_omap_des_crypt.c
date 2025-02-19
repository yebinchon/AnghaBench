
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_des_reqctx {unsigned long mode; } ;
struct omap_des_dev {int dummy; } ;
struct omap_des_ctx {int dummy; } ;
struct ablkcipher_request {int nbytes; } ;


 int DES_BLOCK_SIZE ;
 int EINVAL ;
 int ENODEV ;
 unsigned long FLAGS_CBC ;
 unsigned long FLAGS_ENCRYPT ;
 int IS_ALIGNED (int ,int ) ;
 struct omap_des_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 struct omap_des_ctx* crypto_ablkcipher_ctx (int ) ;
 int crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct omap_des_dev* omap_des_find_dev (struct omap_des_ctx*) ;
 int omap_des_handle_queue (struct omap_des_dev*,struct ablkcipher_request*) ;
 int pr_debug (char*,int ,int,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int omap_des_crypt(struct ablkcipher_request *req, unsigned long mode)
{
 struct omap_des_ctx *ctx = crypto_ablkcipher_ctx(
   crypto_ablkcipher_reqtfm(req));
 struct omap_des_reqctx *rctx = ablkcipher_request_ctx(req);
 struct omap_des_dev *dd;

 pr_debug("nbytes: %d, enc: %d, cbc: %d\n", req->nbytes,
   !!(mode & FLAGS_ENCRYPT),
   !!(mode & FLAGS_CBC));

 if (!IS_ALIGNED(req->nbytes, DES_BLOCK_SIZE)) {
  pr_err("request size is not exact amount of DES blocks\n");
  return -EINVAL;
 }

 dd = omap_des_find_dev(ctx);
 if (!dd)
  return -ENODEV;

 rctx->mode = mode;

 return omap_des_handle_queue(dd, req);
}
