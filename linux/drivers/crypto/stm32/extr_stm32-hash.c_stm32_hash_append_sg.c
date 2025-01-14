
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_hash_request_ctx {scalar_t__ bufcnt; scalar_t__ buflen; scalar_t__ total; size_t offset; scalar_t__ buffer; TYPE_1__* sg; } ;
struct TYPE_4__ {size_t length; } ;


 size_t min (size_t,scalar_t__) ;
 int scatterwalk_map_and_copy (scalar_t__,TYPE_1__*,size_t,size_t,int ) ;
 int sg_is_last (TYPE_1__*) ;
 void* sg_next (TYPE_1__*) ;

__attribute__((used)) static void stm32_hash_append_sg(struct stm32_hash_request_ctx *rctx)
{
 size_t count;

 while ((rctx->bufcnt < rctx->buflen) && rctx->total) {
  count = min(rctx->sg->length - rctx->offset, rctx->total);
  count = min(count, rctx->buflen - rctx->bufcnt);

  if (count <= 0) {
   if ((rctx->sg->length == 0) && !sg_is_last(rctx->sg)) {
    rctx->sg = sg_next(rctx->sg);
    continue;
   } else {
    break;
   }
  }

  scatterwalk_map_and_copy(rctx->buffer + rctx->bufcnt, rctx->sg,
      rctx->offset, count, 0);

  rctx->bufcnt += count;
  rctx->offset += count;
  rctx->total -= count;

  if (rctx->offset == rctx->sg->length) {
   rctx->sg = sg_next(rctx->sg);
   if (rctx->sg)
    rctx->offset = 0;
   else
    rctx->total = 0;
  }
 }
}
