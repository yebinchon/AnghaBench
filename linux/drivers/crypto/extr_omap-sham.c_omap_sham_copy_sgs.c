
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct omap_sham_reqctx {int bufcnt; int sg_len; int offset; TYPE_1__* dd; int sgl; int sg; scalar_t__ total; } ;
struct TYPE_2__ {int flags; int xmit_buf; } ;


 int ENOMEM ;
 int FLAGS_SGS_COPIED ;
 int GFP_ATOMIC ;
 scalar_t__ __get_free_pages (int ,int) ;
 int get_order (scalar_t__) ;
 int memcpy (void*,int ,int) ;
 int pr_err (char*) ;
 int scatterwalk_map_and_copy (void*,struct scatterlist*,int ,scalar_t__,int ) ;
 int set_bit (int ,int *) ;
 int sg_init_table (int ,int) ;
 int sg_set_buf (int ,void*,int) ;

__attribute__((used)) static int omap_sham_copy_sgs(struct omap_sham_reqctx *ctx,
         struct scatterlist *sg, int bs, int new_len)
{
 int pages;
 void *buf;
 int len;

 len = new_len + ctx->bufcnt;

 pages = get_order(ctx->total);

 buf = (void *)__get_free_pages(GFP_ATOMIC, pages);
 if (!buf) {
  pr_err("Couldn't allocate pages for unaligned cases.\n");
  return -ENOMEM;
 }

 if (ctx->bufcnt)
  memcpy(buf, ctx->dd->xmit_buf, ctx->bufcnt);

 scatterwalk_map_and_copy(buf + ctx->bufcnt, sg, ctx->offset,
     ctx->total - ctx->bufcnt, 0);
 sg_init_table(ctx->sgl, 1);
 sg_set_buf(ctx->sgl, buf, len);
 ctx->sg = ctx->sgl;
 set_bit(FLAGS_SGS_COPIED, &ctx->dd->flags);
 ctx->sg_len = 1;
 ctx->bufcnt = 0;
 ctx->offset = 0;

 return 0;
}
