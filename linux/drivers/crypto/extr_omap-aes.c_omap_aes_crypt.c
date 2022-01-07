
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_aes_reqctx {unsigned long mode; } ;
struct omap_aes_dev {int dummy; } ;
struct omap_aes_ctx {int fallback; } ;
struct TYPE_2__ {int flags; } ;
struct ablkcipher_request {scalar_t__ nbytes; int info; int dst; int src; TYPE_1__ base; } ;


 int ENODEV ;
 unsigned long FLAGS_CBC ;
 unsigned long FLAGS_ENCRYPT ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 struct omap_aes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 scalar_t__ aes_fallback_sz ;
 struct omap_aes_ctx* crypto_ablkcipher_ctx (int ) ;
 int crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_skcipher_encrypt (int ) ;
 struct omap_aes_dev* omap_aes_find_dev (struct omap_aes_reqctx*) ;
 int omap_aes_handle_queue (struct omap_aes_dev*,struct ablkcipher_request*) ;
 int pr_debug (char*,scalar_t__,int,int) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,scalar_t__,int ) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skcipher_request_zero (int ) ;
 int subreq ;

__attribute__((used)) static int omap_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
{
 struct omap_aes_ctx *ctx = crypto_ablkcipher_ctx(
   crypto_ablkcipher_reqtfm(req));
 struct omap_aes_reqctx *rctx = ablkcipher_request_ctx(req);
 struct omap_aes_dev *dd;
 int ret;

 pr_debug("nbytes: %d, enc: %d, cbc: %d\n", req->nbytes,
    !!(mode & FLAGS_ENCRYPT),
    !!(mode & FLAGS_CBC));

 if (req->nbytes < aes_fallback_sz) {
  SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->fallback);

  skcipher_request_set_sync_tfm(subreq, ctx->fallback);
  skcipher_request_set_callback(subreq, req->base.flags, ((void*)0),
           ((void*)0));
  skcipher_request_set_crypt(subreq, req->src, req->dst,
        req->nbytes, req->info);

  if (mode & FLAGS_ENCRYPT)
   ret = crypto_skcipher_encrypt(subreq);
  else
   ret = crypto_skcipher_decrypt(subreq);

  skcipher_request_zero(subreq);
  return ret;
 }
 dd = omap_aes_find_dev(rctx);
 if (!dd)
  return -ENODEV;

 rctx->mode = mode;

 return omap_aes_handle_queue(dd, req);
}
