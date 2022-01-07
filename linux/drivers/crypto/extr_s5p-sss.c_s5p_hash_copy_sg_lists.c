
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {unsigned int length; scalar_t__ offset; } ;
struct s5p_hash_reqctx {unsigned int skip; int error; TYPE_1__* dd; scalar_t__ sg_len; int bufcnt; struct scatterlist* sg; } ;
struct TYPE_2__ {int hash_flags; int xmit_buf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HASH_FLAGS_SGS_ALLOCED ;
 struct scatterlist* kmalloc_array (unsigned int,int,int ) ;
 int set_bit (int ,int *) ;
 int sg_init_table (struct scatterlist*,unsigned int) ;
 int sg_mark_end (struct scatterlist*) ;
 unsigned int sg_nents (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int ,int ) ;
 int sg_set_page (struct scatterlist*,int ,unsigned int,scalar_t__) ;

__attribute__((used)) static int s5p_hash_copy_sg_lists(struct s5p_hash_reqctx *ctx,
      struct scatterlist *sg, unsigned int new_len)
{
 unsigned int skip = ctx->skip, n = sg_nents(sg);
 struct scatterlist *tmp;
 unsigned int len;

 if (ctx->bufcnt)
  n++;

 ctx->sg = kmalloc_array(n, sizeof(*sg), GFP_KERNEL);
 if (!ctx->sg) {
  ctx->error = 1;
  return -ENOMEM;
 }

 sg_init_table(ctx->sg, n);

 tmp = ctx->sg;

 ctx->sg_len = 0;

 if (ctx->bufcnt) {
  sg_set_buf(tmp, ctx->dd->xmit_buf, ctx->bufcnt);
  tmp = sg_next(tmp);
  ctx->sg_len++;
 }

 while (sg && skip >= sg->length) {
  skip -= sg->length;
  sg = sg_next(sg);
 }

 while (sg && new_len) {
  len = sg->length - skip;
  if (new_len < len)
   len = new_len;

  new_len -= len;
  sg_set_page(tmp, sg_page(sg), len, sg->offset + skip);
  skip = 0;
  if (new_len <= 0)
   sg_mark_end(tmp);

  tmp = sg_next(tmp);
  ctx->sg_len++;
  sg = sg_next(sg);
 }

 set_bit(HASH_FLAGS_SGS_ALLOCED, &ctx->dd->hash_flags);

 return 0;
}
