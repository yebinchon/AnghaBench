
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_sham_reqctx {scalar_t__ digest; struct omap_sham_dev* dd; } ;
struct omap_sham_dev {TYPE_1__* pdata; } ;
struct ahash_request {int dummy; } ;
struct TYPE_2__ {int digest_size; } ;


 int SHA_REG_IDIGEST (struct omap_sham_dev*,int) ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int omap_sham_read (struct omap_sham_dev*,int ) ;
 int omap_sham_write (struct omap_sham_dev*,int ,int ) ;

__attribute__((used)) static void omap_sham_copy_hash_omap2(struct ahash_request *req, int out)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 struct omap_sham_dev *dd = ctx->dd;
 u32 *hash = (u32 *)ctx->digest;
 int i;

 for (i = 0; i < dd->pdata->digest_size / sizeof(u32); i++) {
  if (out)
   hash[i] = omap_sham_read(dd, SHA_REG_IDIGEST(dd, i));
  else
   omap_sham_write(dd, SHA_REG_IDIGEST(dd, i), hash[i]);
 }
}
