
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int length; int offset; } ;
struct omap_sham_reqctx {int offset; int bufcnt; TYPE_1__* dd; scalar_t__ sg_len; struct scatterlist* sg; } ;
struct TYPE_2__ {int flags; int xmit_buf; } ;


 int ENOMEM ;
 int FLAGS_SGS_ALLOCED ;
 int GFP_KERNEL ;
 struct scatterlist* kmalloc_array (int,int,int ) ;
 int set_bit (int ,int *) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_mark_end (struct scatterlist*) ;
 int sg_nents (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int ,int ) ;
 int sg_set_page (struct scatterlist*,int ,int,int ) ;

__attribute__((used)) static int omap_sham_copy_sg_lists(struct omap_sham_reqctx *ctx,
       struct scatterlist *sg, int bs, int new_len)
{
 int n = sg_nents(sg);
 struct scatterlist *tmp;
 int offset = ctx->offset;

 if (ctx->bufcnt)
  n++;

 ctx->sg = kmalloc_array(n, sizeof(*sg), GFP_KERNEL);
 if (!ctx->sg)
  return -ENOMEM;

 sg_init_table(ctx->sg, n);

 tmp = ctx->sg;

 ctx->sg_len = 0;

 if (ctx->bufcnt) {
  sg_set_buf(tmp, ctx->dd->xmit_buf, ctx->bufcnt);
  tmp = sg_next(tmp);
  ctx->sg_len++;
 }

 while (sg && new_len) {
  int len = sg->length - offset;

  if (offset) {
   offset -= sg->length;
   if (offset < 0)
    offset = 0;
  }

  if (new_len < len)
   len = new_len;

  if (len > 0) {
   new_len -= len;
   sg_set_page(tmp, sg_page(sg), len, sg->offset);
   if (new_len <= 0)
    sg_mark_end(tmp);
   tmp = sg_next(tmp);
   ctx->sg_len++;
  }

  sg = sg_next(sg);
 }

 set_bit(FLAGS_SGS_ALLOCED, &ctx->dd->flags);

 ctx->bufcnt = 0;

 return 0;
}
