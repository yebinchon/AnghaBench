
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {unsigned int length; } ;
struct s5p_hash_reqctx {unsigned int skip; unsigned int sg_len; struct scatterlist* sg; struct scatterlist* sgl; scalar_t__ bufcnt; TYPE_1__* dd; } ;
struct TYPE_2__ {int xmit_buf; } ;


 int BUFLEN ;
 int IS_ALIGNED (unsigned int,int ) ;
 int s5p_hash_copy_sg_lists (struct s5p_hash_reqctx*,struct scatterlist*,unsigned int) ;
 int s5p_hash_copy_sgs (struct s5p_hash_reqctx*,struct scatterlist*,unsigned int) ;
 int sg_chain (struct scatterlist*,int,struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int ,scalar_t__) ;

__attribute__((used)) static int s5p_hash_prepare_sgs(struct s5p_hash_reqctx *ctx,
    struct scatterlist *sg,
    unsigned int new_len, bool final)
{
 unsigned int skip = ctx->skip, nbytes = new_len, n = 0;
 bool aligned = 1, list_ok = 1;
 struct scatterlist *sg_tmp = sg;

 if (!sg || !sg->length || !new_len)
  return 0;

 if (skip || !final)
  list_ok = 0;

 while (nbytes > 0 && sg_tmp) {
  n++;
  if (skip >= sg_tmp->length) {
   skip -= sg_tmp->length;
   if (!sg_tmp->length) {
    aligned = 0;
    break;
   }
  } else {
   if (!IS_ALIGNED(sg_tmp->length - skip, BUFLEN)) {
    aligned = 0;
    break;
   }

   if (nbytes < sg_tmp->length - skip) {
    list_ok = 0;
    break;
   }

   nbytes -= sg_tmp->length - skip;
   skip = 0;
  }

  sg_tmp = sg_next(sg_tmp);
 }

 if (!aligned)
  return s5p_hash_copy_sgs(ctx, sg, new_len);
 else if (!list_ok)
  return s5p_hash_copy_sg_lists(ctx, sg, new_len);





 if (ctx->bufcnt) {
  ctx->sg_len = n;
  sg_init_table(ctx->sgl, 2);
  sg_set_buf(ctx->sgl, ctx->dd->xmit_buf, ctx->bufcnt);
  sg_chain(ctx->sgl, 2, sg);
  ctx->sg = ctx->sgl;
  ctx->sg_len++;
 } else {
  ctx->sg = sg;
  ctx->sg_len = n;
 }

 return 0;
}
