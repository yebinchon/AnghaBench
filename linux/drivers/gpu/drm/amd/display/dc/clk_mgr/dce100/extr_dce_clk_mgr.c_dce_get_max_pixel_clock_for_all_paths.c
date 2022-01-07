
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int requested_pix_clk_100hz; int requested_sym_clk; } ;
struct TYPE_8__ {TYPE_3__ pix_clk_params; } ;
struct pipe_ctx {TYPE_4__ stream_res; TYPE_2__* stream; scalar_t__ top_pipe; } ;
struct TYPE_5__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_1__ res_ctx; } ;
struct TYPE_6__ {int signal; } ;


 int MAX_PIPES ;
 scalar_t__ dc_is_dp_signal (int ) ;

uint32_t dce_get_max_pixel_clock_for_all_paths(struct dc_state *context)
{
 uint32_t max_pix_clk = 0;
 int i;

 for (i = 0; i < MAX_PIPES; i++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];

  if (pipe_ctx->stream == ((void*)0))
   continue;


  if (pipe_ctx->top_pipe)
   continue;

  if (pipe_ctx->stream_res.pix_clk_params.requested_pix_clk_100hz / 10 > max_pix_clk)
   max_pix_clk = pipe_ctx->stream_res.pix_clk_params.requested_pix_clk_100hz / 10;




  if (dc_is_dp_signal(pipe_ctx->stream->signal) &&
    pipe_ctx->stream_res.pix_clk_params.requested_sym_clk > max_pix_clk)
   max_pix_clk = pipe_ctx->stream_res.pix_clk_params.requested_sym_clk;
 }

 return max_pix_clk;
}
