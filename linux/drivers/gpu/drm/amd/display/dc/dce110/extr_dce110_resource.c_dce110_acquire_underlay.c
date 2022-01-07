
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct tg_color {int member_0; } ;
struct resource_pool {unsigned int underlay_pipe_index; int * opps; int * transforms; TYPE_12__** mis; TYPE_11__** timing_generators; } ;
struct resource_context {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_17__ {TYPE_11__* tg; int opp; } ;
struct TYPE_28__ {TYPE_12__* mi; int xfm; } ;
struct pipe_ctx {unsigned int pipe_idx; TYPE_10__ stream_res; TYPE_8__ plane_res; struct dc_stream_state* stream; } ;
struct TYPE_20__ {int pix_clk_100hz; int v_total; int h_total; } ;
struct dc_stream_state {TYPE_14__ timing; int signal; TYPE_1__* ctx; } ;
struct dc_state {int stream_count; struct resource_context res_ctx; } ;
struct dc_bios {int dummy; } ;
struct TYPE_26__ {int (* enable_display_power_gating ) (struct dc*,int ,struct dc_bios*,int ) ;} ;
struct dc {TYPE_6__ hwss; TYPE_5__* ctx; TYPE_4__* current_state; } ;
struct TYPE_29__ {int (* set_blank_color ) (TYPE_11__*,struct tg_color*) ;int (* enable_advanced_request ) (TYPE_11__*,int,TYPE_14__*) ;int (* program_timing ) (TYPE_11__*,TYPE_14__*,int ,int ,int ,int ,int ,int) ;} ;
struct TYPE_27__ {int (* allocate_mem_input ) (TYPE_12__*,int ,int ,int,int ) ;} ;
struct TYPE_25__ {struct dc_bios* dc_bios; } ;
struct TYPE_23__ {TYPE_2__* pipe_ctx; } ;
struct TYPE_24__ {TYPE_3__ res_ctx; } ;
struct TYPE_22__ {int stream; } ;
struct TYPE_21__ {struct dc* dc; } ;
struct TYPE_19__ {TYPE_7__* funcs; } ;
struct TYPE_18__ {TYPE_9__* funcs; int inst; } ;


 int COLOR_SPACE_YCBCR601 ;
 int PIPE_GATING_CONTROL_DISABLE ;
 int color_space_to_black_color (struct dc*,int ,struct tg_color*) ;
 int stub1 (struct dc*,int ,struct dc_bios*,int ) ;
 int stub2 (TYPE_11__*,TYPE_14__*,int ,int ,int ,int ,int ,int) ;
 int stub3 (TYPE_11__*,int,TYPE_14__*) ;
 int stub4 (TYPE_12__*,int ,int ,int,int ) ;
 int stub5 (TYPE_11__*,struct tg_color*) ;

__attribute__((used)) static struct pipe_ctx *dce110_acquire_underlay(
  struct dc_state *context,
  const struct resource_pool *pool,
  struct dc_stream_state *stream)
{
 struct dc *dc = stream->ctx->dc;
 struct resource_context *res_ctx = &context->res_ctx;
 unsigned int underlay_idx = pool->underlay_pipe_index;
 struct pipe_ctx *pipe_ctx = &res_ctx->pipe_ctx[underlay_idx];

 if (res_ctx->pipe_ctx[underlay_idx].stream)
  return ((void*)0);

 pipe_ctx->stream_res.tg = pool->timing_generators[underlay_idx];
 pipe_ctx->plane_res.mi = pool->mis[underlay_idx];

 pipe_ctx->plane_res.xfm = pool->transforms[underlay_idx];
 pipe_ctx->stream_res.opp = pool->opps[underlay_idx];
 pipe_ctx->pipe_idx = underlay_idx;

 pipe_ctx->stream = stream;

 if (!dc->current_state->res_ctx.pipe_ctx[underlay_idx].stream) {
  struct tg_color black_color = {0};
  struct dc_bios *dcb = dc->ctx->dc_bios;

  dc->hwss.enable_display_power_gating(
    dc,
    pipe_ctx->stream_res.tg->inst,
    dcb, PIPE_GATING_CONTROL_DISABLE);






  pipe_ctx->stream_res.tg->funcs->program_timing(pipe_ctx->stream_res.tg,
    &stream->timing,
    0,
    0,
    0,
    0,
    pipe_ctx->stream->signal,
    0);

  pipe_ctx->stream_res.tg->funcs->enable_advanced_request(
    pipe_ctx->stream_res.tg,
    1,
    &stream->timing);

  pipe_ctx->plane_res.mi->funcs->allocate_mem_input(pipe_ctx->plane_res.mi,
    stream->timing.h_total,
    stream->timing.v_total,
    stream->timing.pix_clk_100hz / 10,
    context->stream_count);

  color_space_to_black_color(dc,
    COLOR_SPACE_YCBCR601, &black_color);
  pipe_ctx->stream_res.tg->funcs->set_blank_color(
    pipe_ctx->stream_res.tg,
    &black_color);
 }

 return pipe_ctx;
}
