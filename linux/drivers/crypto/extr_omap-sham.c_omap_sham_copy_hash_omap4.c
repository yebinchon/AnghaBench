
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_sham_reqctx {int flags; struct omap_sham_dev* dd; } ;
struct omap_sham_hmac_ctx {scalar_t__ opad; } ;
struct omap_sham_dev {TYPE_1__* pdata; int req; } ;
struct omap_sham_ctx {struct omap_sham_hmac_ctx* base; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
struct TYPE_2__ {int digest_size; } ;


 int BIT (int ) ;
 int FLAGS_HMAC ;
 int SHA_REG_ODIGEST (struct omap_sham_dev*,int) ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct omap_sham_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (int ) ;
 int omap_sham_copy_hash_omap2 (struct ahash_request*,int) ;
 int omap_sham_read (struct omap_sham_dev*,int ) ;
 int omap_sham_write (struct omap_sham_dev*,int ,int ) ;

__attribute__((used)) static void omap_sham_copy_hash_omap4(struct ahash_request *req, int out)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 struct omap_sham_dev *dd = ctx->dd;
 int i;

 if (ctx->flags & BIT(FLAGS_HMAC)) {
  struct crypto_ahash *tfm = crypto_ahash_reqtfm(dd->req);
  struct omap_sham_ctx *tctx = crypto_ahash_ctx(tfm);
  struct omap_sham_hmac_ctx *bctx = tctx->base;
  u32 *opad = (u32 *)bctx->opad;

  for (i = 0; i < dd->pdata->digest_size / sizeof(u32); i++) {
   if (out)
    opad[i] = omap_sham_read(dd,
      SHA_REG_ODIGEST(dd, i));
   else
    omap_sham_write(dd, SHA_REG_ODIGEST(dd, i),
      opad[i]);
  }
 }

 omap_sham_copy_hash_omap2(req, out);
}
