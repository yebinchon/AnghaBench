
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource_pool {int * dp_clock_source; } ;
struct pipe_ctx {int * clock_source; TYPE_1__* stream; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {int res_ctx; } ;
struct TYPE_4__ {int disable_disp_pll_sharing; } ;
struct dc {TYPE_2__ config; struct resource_pool* res_pool; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_3__ {scalar_t__ signal; } ;


 int DC_ERROR_UNEXPECTED ;
 int DC_NO_CLOCK_SOURCE_RESOURCE ;
 int DC_OK ;
 scalar_t__ SIGNAL_TYPE_VIRTUAL ;
 scalar_t__ dc_is_dp_signal (scalar_t__) ;
 int * dc_resource_find_first_free_pll (int *,struct resource_pool const*) ;
 int * resource_find_used_clk_src_for_sharing (int *,struct pipe_ctx*) ;
 struct pipe_ctx* resource_get_head_pipe_for_stream (int *,struct dc_stream_state*) ;
 int resource_reference_clock_source (int *,struct resource_pool const*,int *) ;

enum dc_status resource_map_clock_resources(
  const struct dc *dc,
  struct dc_state *context,
  struct dc_stream_state *stream)
{

 const struct resource_pool *pool = dc->res_pool;
 struct pipe_ctx *pipe_ctx = resource_get_head_pipe_for_stream(
    &context->res_ctx, stream);

 if (!pipe_ctx)
  return DC_ERROR_UNEXPECTED;

 if (dc_is_dp_signal(pipe_ctx->stream->signal)
  || pipe_ctx->stream->signal == SIGNAL_TYPE_VIRTUAL)
  pipe_ctx->clock_source = pool->dp_clock_source;
 else {
  pipe_ctx->clock_source = ((void*)0);

  if (!dc->config.disable_disp_pll_sharing)
   pipe_ctx->clock_source = resource_find_used_clk_src_for_sharing(
    &context->res_ctx,
    pipe_ctx);

  if (pipe_ctx->clock_source == ((void*)0))
   pipe_ctx->clock_source =
    dc_resource_find_first_free_pll(
     &context->res_ctx,
     pool);
 }

 if (pipe_ctx->clock_source == ((void*)0))
  return DC_NO_CLOCK_SOURCE_RESOURCE;

 resource_reference_clock_source(
  &context->res_ctx, pool,
  pipe_ctx->clock_source);

 return DC_OK;
}
