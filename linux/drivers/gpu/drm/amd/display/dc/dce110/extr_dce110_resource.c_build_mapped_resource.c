
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_ctx {int dummy; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {int res_ctx; } ;
struct dc {TYPE_1__* res_pool; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_2__ {int underlay_pipe_index; } ;


 int DC_ERROR_UNEXPECTED ;
 int DC_OK ;
 int DC_SURFACE_PIXEL_FORMAT_UNSUPPORTED ;
 int dce110_resource_build_pipe_hw_param (struct pipe_ctx*) ;
 int is_surface_pixel_format_supported (struct pipe_ctx*,int ) ;
 int resource_build_info_frame (struct pipe_ctx*) ;
 struct pipe_ctx* resource_get_head_pipe_for_stream (int *,struct dc_stream_state*) ;

__attribute__((used)) static enum dc_status build_mapped_resource(
  const struct dc *dc,
  struct dc_state *context,
  struct dc_stream_state *stream)
{
 struct pipe_ctx *pipe_ctx = resource_get_head_pipe_for_stream(&context->res_ctx, stream);

 if (!pipe_ctx)
  return DC_ERROR_UNEXPECTED;

 if (!is_surface_pixel_format_supported(pipe_ctx,
   dc->res_pool->underlay_pipe_index))
  return DC_SURFACE_PIXEL_FORMAT_UNSUPPORTED;

 dce110_resource_build_pipe_hw_param(pipe_ctx);



 resource_build_info_frame(pipe_ctx);

 return DC_OK;
}
