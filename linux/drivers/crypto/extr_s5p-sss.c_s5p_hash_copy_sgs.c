
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct s5p_hash_reqctx {unsigned int bufcnt; int error; int sg_len; TYPE_1__* dd; int skip; int sgl; int sg; } ;
struct TYPE_2__ {int hash_flags; int xmit_buf; int dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int HASH_FLAGS_SGS_COPIED ;
 scalar_t__ __get_free_pages (int ,unsigned int) ;
 int dev_err (int ,char*) ;
 unsigned int get_order (unsigned int) ;
 int memcpy (void*,int ,int) ;
 int scatterwalk_map_and_copy (void*,struct scatterlist*,int ,unsigned int,int ) ;
 int set_bit (int ,int *) ;
 int sg_init_table (int ,int) ;
 int sg_set_buf (int ,void*,unsigned int) ;

__attribute__((used)) static int s5p_hash_copy_sgs(struct s5p_hash_reqctx *ctx,
        struct scatterlist *sg, unsigned int new_len)
{
 unsigned int pages, len;
 void *buf;

 len = new_len + ctx->bufcnt;
 pages = get_order(len);

 buf = (void *)__get_free_pages(GFP_ATOMIC, pages);
 if (!buf) {
  dev_err(ctx->dd->dev, "alloc pages for unaligned case.\n");
  ctx->error = 1;
  return -ENOMEM;
 }

 if (ctx->bufcnt)
  memcpy(buf, ctx->dd->xmit_buf, ctx->bufcnt);

 scatterwalk_map_and_copy(buf + ctx->bufcnt, sg, ctx->skip,
     new_len, 0);
 sg_init_table(ctx->sgl, 1);
 sg_set_buf(ctx->sgl, buf, len);
 ctx->sg = ctx->sgl;
 ctx->sg_len = 1;
 ctx->bufcnt = 0;
 ctx->skip = 0;
 set_bit(HASH_FLAGS_SGS_COPIED, &ctx->dd->hash_flags);

 return 0;
}
