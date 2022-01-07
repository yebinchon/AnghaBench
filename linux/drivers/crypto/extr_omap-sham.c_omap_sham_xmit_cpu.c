
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sg_mapping_iter {int length; int * addr; } ;
struct omap_sham_reqctx {size_t digcnt; size_t total; int sg_len; int sg; } ;
struct omap_sham_dev {TYPE_1__* pdata; int flags; int dev; int req; } ;
struct TYPE_2__ {scalar_t__ (* poll_irq ) (struct omap_sham_dev*) ;int (* trigger ) (struct omap_sham_dev*,size_t) ;int (* write_ctrl ) (struct omap_sham_dev*,size_t,int,int ) ;} ;


 int DIV_ROUND_UP (size_t,int) ;
 int EINPROGRESS ;
 int EINVAL ;
 int ETIMEDOUT ;
 int FLAGS_CPU ;
 int FLAGS_FINAL ;
 int SG_MITER_ATOMIC ;
 int SG_MITER_FROM_SG ;
 int SHA_REG_DIN (struct omap_sham_dev*,int) ;
 struct omap_sham_reqctx* ahash_request_ctx (int ) ;
 int dev_dbg (int ,char*,size_t,size_t,int) ;
 int get_block_size (struct omap_sham_reqctx*) ;
 int min (int,int) ;
 int omap_sham_write (struct omap_sham_dev*,int ,int const) ;
 int pr_err (char*) ;
 int set_bit (int ,int *) ;
 int sg_miter_next (struct sg_mapping_iter*) ;
 int sg_miter_start (struct sg_mapping_iter*,int ,int ,int) ;
 int sg_miter_stop (struct sg_mapping_iter*) ;
 int stub1 (struct omap_sham_dev*,size_t,int,int ) ;
 int stub2 (struct omap_sham_dev*,size_t) ;
 scalar_t__ stub3 (struct omap_sham_dev*) ;

__attribute__((used)) static int omap_sham_xmit_cpu(struct omap_sham_dev *dd, size_t length,
         int final)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(dd->req);
 int count, len32, bs32, offset = 0;
 const u32 *buffer;
 int mlen;
 struct sg_mapping_iter mi;

 dev_dbg(dd->dev, "xmit_cpu: digcnt: %d, length: %d, final: %d\n",
      ctx->digcnt, length, final);

 dd->pdata->write_ctrl(dd, length, final, 0);
 dd->pdata->trigger(dd, length);


 ctx->digcnt += length;
 ctx->total -= length;

 if (final)
  set_bit(FLAGS_FINAL, &dd->flags);

 set_bit(FLAGS_CPU, &dd->flags);

 len32 = DIV_ROUND_UP(length, sizeof(u32));
 bs32 = get_block_size(ctx) / sizeof(u32);

 sg_miter_start(&mi, ctx->sg, ctx->sg_len,
         SG_MITER_FROM_SG | SG_MITER_ATOMIC);

 mlen = 0;

 while (len32) {
  if (dd->pdata->poll_irq(dd))
   return -ETIMEDOUT;

  for (count = 0; count < min(len32, bs32); count++, offset++) {
   if (!mlen) {
    sg_miter_next(&mi);
    mlen = mi.length;
    if (!mlen) {
     pr_err("sg miter failure.\n");
     return -EINVAL;
    }
    offset = 0;
    buffer = mi.addr;
   }
   omap_sham_write(dd, SHA_REG_DIN(dd, count),
     buffer[offset]);
   mlen -= 4;
  }
  len32 -= min(len32, bs32);
 }

 sg_miter_stop(&mi);

 return -EINPROGRESS;
}
