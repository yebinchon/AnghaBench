
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_15__ {TYPE_10__* tg; } ;
struct pipe_ctx {TYPE_4__ stream_res; struct dc_plane_state* plane_state; struct dc_stream_state* stream; scalar_t__ bottom_pipe; int prev_odm_pipe; int top_pipe; } ;
struct dc_surface_update {scalar_t__ flip_addr; struct dc_plane_state* surface; } ;
struct dc_stream_update {int dummy; } ;
struct dc_stream_status {int plane_count; } ;
struct dc_stream_state {int apply_seamless_boot_optimization; } ;
struct TYPE_19__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_8__ res_ctx; } ;
struct TYPE_12__ {int addr_update; } ;
struct TYPE_13__ {TYPE_1__ bits; } ;
struct dc_plane_state {int triplebuffer_flips; TYPE_2__ update_flags; int flip_immediate; } ;
struct TYPE_20__ {int (* pipe_control_lock ) (struct dc*,struct pipe_ctx*,int) ;int (* update_plane_addr ) (struct dc*,struct pipe_ctx*) ;int (* program_triplebuffer ) (struct dc*,struct pipe_ctx*,int) ;int (* set_flip_control_gsl ) (struct pipe_ctx*,int ) ;int (* apply_ctx_for_surface ) (struct dc*,struct dc_stream_state*,int ,struct dc_state*) ;int (* prepare_bandwidth ) (struct dc*,struct dc_state*) ;} ;
struct TYPE_17__ {int disable_tri_buf; } ;
struct dc {int optimize_seamless_boot; int optimized_required; TYPE_7__* res_pool; TYPE_9__ hwss; TYPE_6__ debug; TYPE_5__* ctx; } ;
typedef enum surface_update_type { ____Placeholder_surface_update_type } surface_update_type ;
struct TYPE_18__ {int pipe_count; } ;
struct TYPE_16__ {int dce_environment; } ;
struct TYPE_14__ {int (* program_manual_trigger ) (TYPE_10__*) ;} ;
struct TYPE_11__ {TYPE_3__* funcs; } ;


 int ASSERT (int) ;
 int IS_DIAG_DC (int ) ;
 int UPDATE_TYPE_FAST ;
 int UPDATE_TYPE_FULL ;
 int commit_planes_do_stream_update (struct dc*,struct dc_stream_state*,struct dc_stream_update*,int,struct dc_state*) ;
 int context_clock_trace (struct dc*,struct dc_state*) ;
 struct dc_stream_status* stream_get_status (struct dc_state*,struct dc_stream_state*) ;
 int stub1 (struct dc*,struct dc_state*) ;
 int stub10 (TYPE_10__*) ;
 int stub2 (struct dc*,struct dc_stream_state*,int ,struct dc_state*) ;
 int stub3 (struct dc*,struct pipe_ctx*,int) ;
 int stub4 (struct dc*,struct dc_stream_state*,int ,struct dc_state*) ;
 int stub5 (struct dc*,struct pipe_ctx*,int) ;
 int stub6 (struct pipe_ctx*,int ) ;
 int stub7 (struct dc*,struct pipe_ctx*,int) ;
 int stub8 (struct dc*,struct pipe_ctx*) ;
 int stub9 (struct dc*,struct pipe_ctx*,int) ;

__attribute__((used)) static void commit_planes_for_stream(struct dc *dc,
  struct dc_surface_update *srf_updates,
  int surface_count,
  struct dc_stream_state *stream,
  struct dc_stream_update *stream_update,
  enum surface_update_type update_type,
  struct dc_state *context)
{
 int i, j;
 struct pipe_ctx *top_pipe_to_program = ((void*)0);

 if (dc->optimize_seamless_boot && surface_count > 0) {






  if (stream->apply_seamless_boot_optimization) {
   stream->apply_seamless_boot_optimization = 0;
   dc->optimize_seamless_boot = 0;
   dc->optimized_required = 1;
  }
 }

 if (update_type == UPDATE_TYPE_FULL && !dc->optimize_seamless_boot) {
  dc->hwss.prepare_bandwidth(dc, context);
  context_clock_trace(dc, context);
 }


 if (stream_update)
  commit_planes_do_stream_update(dc, stream, stream_update, update_type, context);

 if (surface_count == 0) {




  dc->hwss.apply_ctx_for_surface(dc, stream, 0, context);
  return;
 }
 for (j = 0; j < dc->res_pool->pipe_count; j++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[j];

  if (!pipe_ctx->top_pipe &&
   !pipe_ctx->prev_odm_pipe &&
   pipe_ctx->stream &&
   pipe_ctx->stream == stream) {
   struct dc_stream_status *stream_status = ((void*)0);

   top_pipe_to_program = pipe_ctx;

   if (!pipe_ctx->plane_state)
    continue;


   if (update_type == UPDATE_TYPE_FAST)
    continue;
   stream_status =
    stream_get_status(context, pipe_ctx->stream);

   dc->hwss.apply_ctx_for_surface(
     dc, pipe_ctx->stream, stream_status->plane_count, context);
  }
 }


 if (update_type == UPDATE_TYPE_FAST) {




  dc->hwss.pipe_control_lock(dc, top_pipe_to_program, 1);
  for (i = 0; i < surface_count; i++) {
   struct dc_plane_state *plane_state = srf_updates[i].surface;

   for (j = 0; j < dc->res_pool->pipe_count; j++) {
    struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[j];

    if (pipe_ctx->stream != stream)
     continue;

    if (pipe_ctx->plane_state != plane_state)
     continue;
    if (srf_updates[i].flip_addr)
     dc->hwss.update_plane_addr(dc, pipe_ctx);
   }
  }

  dc->hwss.pipe_control_lock(dc, top_pipe_to_program, 0);
 }


 for (j = 0; j < dc->res_pool->pipe_count; j++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[j];

  if (pipe_ctx->bottom_pipe ||
    !pipe_ctx->stream ||
    pipe_ctx->stream != stream ||
    !pipe_ctx->plane_state->update_flags.bits.addr_update)
   continue;

  if (pipe_ctx->stream_res.tg->funcs->program_manual_trigger)
   pipe_ctx->stream_res.tg->funcs->program_manual_trigger(pipe_ctx->stream_res.tg);
 }
}
