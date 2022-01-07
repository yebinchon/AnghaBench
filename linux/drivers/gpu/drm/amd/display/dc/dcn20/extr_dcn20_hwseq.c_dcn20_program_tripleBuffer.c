
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* hubp; } ;
struct pipe_ctx {TYPE_2__ plane_res; } ;
struct dc {int dummy; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_4__ {int (* hubp_enable_tripleBuffer ) (TYPE_3__*,int) ;} ;


 int stub1 (TYPE_3__*,int) ;

void dcn20_program_tripleBuffer(
 const struct dc *dc,
 struct pipe_ctx *pipe_ctx,
 bool enableTripleBuffer)
{
 if (pipe_ctx->plane_res.hubp && pipe_ctx->plane_res.hubp->funcs) {
  pipe_ctx->plane_res.hubp->funcs->hubp_enable_tripleBuffer(
   pipe_ctx->plane_res.hubp,
   enableTripleBuffer);
 }
}
