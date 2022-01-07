
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dc_stream_state {int dummy; } ;
struct TYPE_7__ {TYPE_2__* pipe_ctx; } ;
struct dc_state {int stream_count; struct dc_stream_state** streams; TYPE_3__ res_ctx; } ;
struct TYPE_8__ {int (* apply_ctx_for_surface ) (struct dc*,struct dc_stream_state*,int ,struct dc_state*) ;} ;
struct dc {struct dc_state* current_state; TYPE_4__ hwss; TYPE_1__* res_pool; } ;
struct TYPE_6__ {struct dc_stream_state* stream; } ;
struct TYPE_5__ {int pipe_count; } ;


 struct dc_state* dc_create_state (struct dc*) ;
 int dc_release_state (struct dc_state*) ;
 int dc_rem_all_planes_for_stream (struct dc*,struct dc_stream_state*,struct dc_state*) ;
 int dc_resource_state_copy_construct (struct dc_state*,struct dc_state*) ;
 int disable_all_writeback_pipes_for_stream (struct dc*,struct dc_stream_state*,struct dc_state*) ;
 int stub1 (struct dc*,struct dc_stream_state*,int ,struct dc_state*) ;

__attribute__((used)) static void disable_dangling_plane(struct dc *dc, struct dc_state *context)
{
 int i, j;
 struct dc_state *dangling_context = dc_create_state(dc);
 struct dc_state *current_ctx;

 if (dangling_context == ((void*)0))
  return;

 dc_resource_state_copy_construct(dc->current_state, dangling_context);

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct dc_stream_state *old_stream =
    dc->current_state->res_ctx.pipe_ctx[i].stream;
  bool should_disable = 1;

  for (j = 0; j < context->stream_count; j++) {
   if (old_stream == context->streams[j]) {
    should_disable = 0;
    break;
   }
  }
  if (should_disable && old_stream) {
   dc_rem_all_planes_for_stream(dc, old_stream, dangling_context);



   dc->hwss.apply_ctx_for_surface(dc, old_stream, 0, dangling_context);
  }
 }

 current_ctx = dc->current_state;
 dc->current_state = dangling_context;
 dc_release_state(current_ctx);
}
