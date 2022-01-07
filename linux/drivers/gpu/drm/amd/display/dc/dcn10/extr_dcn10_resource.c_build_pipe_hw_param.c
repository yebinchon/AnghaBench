
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pix_clk_params; } ;
struct pipe_ctx {TYPE_6__* stream; int pll_settings; TYPE_3__ stream_res; TYPE_5__* clock_source; } ;
struct TYPE_9__ {int pixel_encoding; } ;
struct TYPE_8__ {int pixel_encoding; } ;
struct TYPE_13__ {int bit_depth_params; TYPE_2__ timing; TYPE_1__ clamping; } ;
struct TYPE_12__ {TYPE_4__* funcs; } ;
struct TYPE_11__ {int (* get_pix_clk_dividers ) (TYPE_5__*,int *,int *) ;} ;


 int build_clamping_params (TYPE_6__*) ;
 int get_pixel_clock_parameters (struct pipe_ctx*,int *) ;
 int resource_build_bit_depth_reduction_params (TYPE_6__*,int *) ;
 int stub1 (TYPE_5__*,int *,int *) ;

__attribute__((used)) static void build_pipe_hw_param(struct pipe_ctx *pipe_ctx)
{

 get_pixel_clock_parameters(pipe_ctx, &pipe_ctx->stream_res.pix_clk_params);

 pipe_ctx->clock_source->funcs->get_pix_clk_dividers(
  pipe_ctx->clock_source,
  &pipe_ctx->stream_res.pix_clk_params,
  &pipe_ctx->pll_settings);

 pipe_ctx->stream->clamping.pixel_encoding = pipe_ctx->stream->timing.pixel_encoding;

 resource_build_bit_depth_reduction_params(pipe_ctx->stream,
     &pipe_ctx->stream->bit_depth_params);
 build_clamping_params(pipe_ctx->stream);
}
