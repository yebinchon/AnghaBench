
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ audio; int stream_enc; } ;
struct pipe_ctx {struct pipe_ctx* next_odm_pipe; int clock_source; TYPE_1__ stream_res; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {int stream_count; struct pipe_ctx* stream_status; struct dc_stream_state** streams; int res_ctx; } ;
struct dc_context {int dummy; } ;
struct dc {TYPE_3__* res_pool; struct dc_context* ctx; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_8__ {TYPE_2__* funcs; } ;
struct TYPE_7__ {int (* remove_stream_from_ctx ) (struct dc*,struct dc_state*,struct dc_stream_state*) ;} ;


 int ASSERT (int ) ;
 int DC_ERROR (char*,struct dc_stream_state*) ;
 int DC_ERROR_UNEXPECTED ;
 int DC_OK ;
 int dc_stream_release (struct dc_stream_state*) ;
 int memset (struct pipe_ctx*,int ,int) ;
 struct pipe_ctx* resource_get_head_pipe_for_stream (int *,struct dc_stream_state*) ;
 int resource_unreference_clock_source (int *,TYPE_3__*,int ) ;
 int stub1 (struct dc*,struct dc_state*,struct dc_stream_state*) ;
 int update_audio_usage (int *,TYPE_3__*,scalar_t__,int) ;
 int update_stream_engine_usage (int *,TYPE_3__*,int ,int) ;

enum dc_status dc_remove_stream_from_ctx(
   struct dc *dc,
   struct dc_state *new_ctx,
   struct dc_stream_state *stream)
{
 int i;
 struct dc_context *dc_ctx = dc->ctx;
 struct pipe_ctx *del_pipe = resource_get_head_pipe_for_stream(&new_ctx->res_ctx, stream);
 struct pipe_ctx *odm_pipe;

 if (!del_pipe) {
  DC_ERROR("Pipe not found for stream %p !\n", stream);
  return DC_ERROR_UNEXPECTED;
 }

 odm_pipe = del_pipe->next_odm_pipe;


 ASSERT(del_pipe->stream_res.stream_enc);
 update_stream_engine_usage(
   &new_ctx->res_ctx,
    dc->res_pool,
   del_pipe->stream_res.stream_enc,
   0);

 if (del_pipe->stream_res.audio)
  update_audio_usage(
   &new_ctx->res_ctx,
   dc->res_pool,
   del_pipe->stream_res.audio,
   0);

 resource_unreference_clock_source(&new_ctx->res_ctx,
       dc->res_pool,
       del_pipe->clock_source);

 if (dc->res_pool->funcs->remove_stream_from_ctx)
  dc->res_pool->funcs->remove_stream_from_ctx(dc, new_ctx, stream);

 while (odm_pipe) {
  struct pipe_ctx *next_odm_pipe = odm_pipe->next_odm_pipe;

  memset(odm_pipe, 0, sizeof(*odm_pipe));
  odm_pipe = next_odm_pipe;
 }
 memset(del_pipe, 0, sizeof(*del_pipe));

 for (i = 0; i < new_ctx->stream_count; i++)
  if (new_ctx->streams[i] == stream)
   break;

 if (new_ctx->streams[i] != stream) {
  DC_ERROR("Context doesn't have stream %p !\n", stream);
  return DC_ERROR_UNEXPECTED;
 }

 dc_stream_release(new_ctx->streams[i]);
 new_ctx->stream_count--;


 for (; i < new_ctx->stream_count; i++) {
  new_ctx->streams[i] = new_ctx->streams[i + 1];
  new_ctx->stream_status[i] = new_ctx->stream_status[i + 1];
 }

 new_ctx->streams[new_ctx->stream_count] = ((void*)0);
 memset(
   &new_ctx->stream_status[new_ctx->stream_count],
   0,
   sizeof(new_ctx->stream_status[0]));

 return DC_OK;
}
