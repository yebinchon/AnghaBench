
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mtk_sha_reqctx {scalar_t__ bufcnt; scalar_t__ total; size_t offset; scalar_t__ buffer; TYPE_1__* sg; } ;
struct TYPE_4__ {size_t length; } ;


 scalar_t__ SHA_BUF_SIZE ;
 size_t min (size_t,scalar_t__) ;
 int scatterwalk_map_and_copy (scalar_t__,TYPE_1__*,size_t,size_t,int ) ;
 int sg_is_last (TYPE_1__*) ;
 void* sg_next (TYPE_1__*) ;

__attribute__((used)) static int mtk_sha_append_sg(struct mtk_sha_reqctx *ctx)
{
 size_t count;

 while ((ctx->bufcnt < SHA_BUF_SIZE) && ctx->total) {
  count = min(ctx->sg->length - ctx->offset, ctx->total);
  count = min(count, SHA_BUF_SIZE - ctx->bufcnt);

  if (count <= 0) {






   if ((ctx->sg->length == 0) && !sg_is_last(ctx->sg)) {
    ctx->sg = sg_next(ctx->sg);
    continue;
   } else {
    break;
   }
  }

  scatterwalk_map_and_copy(ctx->buffer + ctx->bufcnt, ctx->sg,
      ctx->offset, count, 0);

  ctx->bufcnt += count;
  ctx->offset += count;
  ctx->total -= count;

  if (ctx->offset == ctx->sg->length) {
   ctx->sg = sg_next(ctx->sg);
   if (ctx->sg)
    ctx->offset = 0;
   else
    ctx->total = 0;
  }
 }

 return 0;
}
