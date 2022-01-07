
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pipe_ctx {int * clock_source; TYPE_1__* stream; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {int res_ctx; } ;
struct dc {TYPE_2__* res_pool; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_5__ {int * dp_clock_source; } ;
struct TYPE_4__ {int signal; } ;


 int DC_ERROR_UNEXPECTED ;
 int DC_NO_CLOCK_SOURCE_RESOURCE ;
 int DC_OK ;
 scalar_t__ dc_is_dp_signal (int ) ;
 scalar_t__ dc_is_virtual_signal (int ) ;
 int * find_matching_pll (int *,TYPE_2__*,struct dc_stream_state*) ;
 struct pipe_ctx* resource_get_head_pipe_for_stream (int *,struct dc_stream_state*) ;
 int resource_reference_clock_source (int *,TYPE_2__*,int *) ;

enum dc_status resource_map_phy_clock_resources(
  const struct dc *dc,
  struct dc_state *context,
  struct dc_stream_state *stream)
{


 struct pipe_ctx *pipe_ctx = resource_get_head_pipe_for_stream(
   &context->res_ctx, stream);

 if (!pipe_ctx)
  return DC_ERROR_UNEXPECTED;

 if (dc_is_dp_signal(pipe_ctx->stream->signal)
  || dc_is_virtual_signal(pipe_ctx->stream->signal))
  pipe_ctx->clock_source =
    dc->res_pool->dp_clock_source;
 else
  pipe_ctx->clock_source = find_matching_pll(
   &context->res_ctx, dc->res_pool,
   stream);

 if (pipe_ctx->clock_source == ((void*)0))
  return DC_NO_CLOCK_SOURCE_RESOURCE;

 resource_reference_clock_source(
  &context->res_ctx,
  dc->res_pool,
  pipe_ctx->clock_source);

 return DC_OK;
}
