
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_16__ {TYPE_10__* mi; } ;
struct pipe_ctx {scalar_t__ plane_state; int top_pipe; struct dc_stream_state const* stream; TYPE_3__ plane_res; } ;
struct TYPE_17__ {int pix_clk_100hz; int v_total; int h_total; } ;
struct dc_stream_state {TYPE_4__ timing; } ;
struct TYPE_19__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_6__ res_ctx; int stream_count; } ;
struct TYPE_22__ {int (* pipe_control_lock ) (struct dc*,struct pipe_ctx*,int) ;int (* update_plane_addr ) (struct dc*,struct pipe_ctx*) ;} ;
struct dc {TYPE_11__* fbc_compressor; TYPE_9__ hwss; TYPE_8__* current_state; TYPE_5__* res_pool; } ;
struct TYPE_20__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_21__ {TYPE_7__ res_ctx; } ;
struct TYPE_18__ {int pipe_count; } ;
struct TYPE_15__ {int (* allocate_mem_input ) (TYPE_10__*,int ,int ,int,int ) ;} ;
struct TYPE_14__ {int (* disable_fbc ) (TYPE_11__*) ;} ;
struct TYPE_13__ {TYPE_1__* funcs; } ;
struct TYPE_12__ {TYPE_2__* funcs; } ;


 int dce110_program_front_end_for_pipe (struct dc*,struct pipe_ctx*) ;
 int enable_fbc (struct dc*,struct dc_state*) ;
 int program_surface_visibility (struct dc*,struct pipe_ctx*) ;
 int stub1 (TYPE_11__*) ;
 int stub2 (struct dc*,struct pipe_ctx*,int) ;
 int stub3 (TYPE_10__*,int ,int ,int,int ) ;
 int stub4 (struct dc*,struct pipe_ctx*) ;
 int stub5 (struct dc*,struct pipe_ctx*,int) ;

__attribute__((used)) static void dce110_apply_ctx_for_surface(
  struct dc *dc,
  const struct dc_stream_state *stream,
  int num_planes,
  struct dc_state *context)
{
 int i;

 if (num_planes == 0)
  return;

 if (dc->fbc_compressor)
  dc->fbc_compressor->funcs->disable_fbc(dc->fbc_compressor);

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];
  struct pipe_ctx *old_pipe_ctx = &dc->current_state->res_ctx.pipe_ctx[i];

  if (stream == pipe_ctx->stream) {
   if (!pipe_ctx->top_pipe &&
    (pipe_ctx->plane_state || old_pipe_ctx->plane_state))
    dc->hwss.pipe_control_lock(dc, pipe_ctx, 1);
  }
 }

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];

  if (pipe_ctx->stream != stream)
   continue;


  pipe_ctx->plane_res.mi->funcs->allocate_mem_input(
    pipe_ctx->plane_res.mi,
    pipe_ctx->stream->timing.h_total,
    pipe_ctx->stream->timing.v_total,
    pipe_ctx->stream->timing.pix_clk_100hz / 10,
    context->stream_count);

  dce110_program_front_end_for_pipe(dc, pipe_ctx);

  dc->hwss.update_plane_addr(dc, pipe_ctx);

  program_surface_visibility(dc, pipe_ctx);

 }

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];
  struct pipe_ctx *old_pipe_ctx = &dc->current_state->res_ctx.pipe_ctx[i];

  if ((stream == pipe_ctx->stream) &&
   (!pipe_ctx->top_pipe) &&
   (pipe_ctx->plane_state || old_pipe_ctx->plane_state))
   dc->hwss.pipe_control_lock(dc, pipe_ctx, 0);
 }

 if (dc->fbc_compressor)
  enable_fbc(dc, context);
}
