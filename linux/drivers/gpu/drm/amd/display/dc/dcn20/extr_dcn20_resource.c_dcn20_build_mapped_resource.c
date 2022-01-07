
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_ctx {int dummy; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {int res_ctx; } ;
struct dc {int dummy; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;


 int DC_ERROR_UNEXPECTED ;
 int DC_OK ;
 int build_pipe_hw_param (struct pipe_ctx*) ;
 struct pipe_ctx* resource_get_head_pipe_for_stream (int *,struct dc_stream_state*) ;

enum dc_status dcn20_build_mapped_resource(const struct dc *dc, struct dc_state *context, struct dc_stream_state *stream)
{
 enum dc_status status = DC_OK;
 struct pipe_ctx *pipe_ctx = resource_get_head_pipe_for_stream(&context->res_ctx, stream);
 if (!pipe_ctx)
  return DC_ERROR_UNEXPECTED;


 status = build_pipe_hw_param(pipe_ctx);

 return status;
}
