
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct timing_generator {TYPE_6__* funcs; } ;
struct TYPE_23__ {TYPE_12__* hubp; } ;
struct TYPE_20__ {struct timing_generator* tg; int gsl_group; } ;
struct pipe_ctx {TYPE_7__ plane_res; TYPE_10__* plane_state; int ttu_regs; int dlg_regs; struct dc_stream_state const* stream; int pipe_idx; TYPE_4__ stream_res; } ;
struct dc_stream_state {scalar_t__ num_wb_info; } ;
struct TYPE_25__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_9__ res_ctx; } ;
struct TYPE_21__ {int (* program_all_writeback_pipes_in_tree ) (struct dc*,struct dc_stream_state const*,struct dc_state*) ;int (* plane_atomic_disconnect ) (struct dc*,struct pipe_ctx*) ;int (* disable_plane ) (struct dc*,struct pipe_ctx*) ;int (* blank_pixel_data ) (struct dc*,struct pipe_ctx*,int) ;} ;
struct dc {struct dc_state* current_state; TYPE_8__* res_pool; TYPE_5__ hwss; TYPE_1__* ctx; } ;
struct TYPE_24__ {int pipe_count; } ;
struct TYPE_22__ {int (* is_tg_enabled ) (struct timing_generator*) ;} ;
struct TYPE_18__ {scalar_t__ full_update; } ;
struct TYPE_19__ {TYPE_2__ bits; } ;
struct TYPE_17__ {int logger; } ;
struct TYPE_16__ {scalar_t__ opp_id; TYPE_11__* funcs; } ;
struct TYPE_15__ {scalar_t__ (* hubp_is_flip_pending ) (TYPE_12__*) ;int (* hubp_setup_interdependent ) (TYPE_12__*,int *,int *) ;} ;
struct TYPE_14__ {TYPE_3__ update_flags; } ;


 int DC_LOGGER_INIT (int ) ;
 int DC_LOG_DC (char*,int ) ;
 scalar_t__ OPP_ID_INVALID ;
 int dcn20_disable_plane (struct dc*,struct pipe_ctx*) ;
 int dcn20_pipe_control_lock (struct dc*,struct pipe_ctx*,int) ;
 int dcn20_program_all_pipe_in_tree (struct dc*,struct pipe_ctx*,struct dc_state*) ;
 struct pipe_ctx* find_top_pipe_for_stream (struct dc*,struct dc_state*,struct dc_stream_state const*) ;
 int lock_all_pipes (struct dc*,struct dc_state*,int) ;
 int msleep (int) ;
 int stub1 (struct dc*,struct pipe_ctx*,int) ;
 int stub2 (struct dc*,struct pipe_ctx*) ;
 int stub3 (struct dc*,struct pipe_ctx*) ;
 int stub4 (struct dc*,struct dc_stream_state const*,struct dc_state*) ;
 int stub5 (struct timing_generator*) ;
 int stub6 (TYPE_12__*,int *,int *) ;
 scalar_t__ stub7 (TYPE_12__*) ;

__attribute__((used)) static void dcn20_apply_ctx_for_surface(
  struct dc *dc,
  const struct dc_stream_state *stream,
  int num_planes,
  struct dc_state *context)
{
 const unsigned int TIMEOUT_FOR_PIPE_ENABLE_MS = 100;
 int i;
 struct timing_generator *tg;
 bool removed_pipe[6] = { 0 };
 bool interdependent_update = 0;
 struct pipe_ctx *top_pipe_to_program =
   find_top_pipe_for_stream(dc, context, stream);
 struct pipe_ctx *prev_top_pipe_to_program =
   find_top_pipe_for_stream(dc, dc->current_state, stream);
 DC_LOGGER_INIT(dc->ctx->logger);

 if (!top_pipe_to_program)
  return;


 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];
  struct pipe_ctx *old_pipe_ctx =
   &dc->current_state->res_ctx.pipe_ctx[i];

  if (pipe_ctx->stream == stream &&
      pipe_ctx->stream == old_pipe_ctx->stream)
   pipe_ctx->stream_res.gsl_group =
    old_pipe_ctx->stream_res.gsl_group;
 }

 tg = top_pipe_to_program->stream_res.tg;

 interdependent_update = top_pipe_to_program->plane_state &&
  top_pipe_to_program->plane_state->update_flags.bits.full_update;

 if (interdependent_update)
  lock_all_pipes(dc, context, 1);
 else
  dcn20_pipe_control_lock(dc, top_pipe_to_program, 1);

 if (num_planes == 0) {

  dc->hwss.blank_pixel_data(dc, top_pipe_to_program, 1);
 }


 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];
  struct pipe_ctx *old_pipe_ctx =
    &dc->current_state->res_ctx.pipe_ctx[i];






  if (pipe_ctx->plane_state && !old_pipe_ctx->plane_state) {
   if (old_pipe_ctx->stream_res.tg == tg &&
       old_pipe_ctx->plane_res.hubp &&
       old_pipe_ctx->plane_res.hubp->opp_id != OPP_ID_INVALID)
    dc->hwss.disable_plane(dc, old_pipe_ctx);
  }

  if ((!pipe_ctx->plane_state ||
       pipe_ctx->stream_res.tg != old_pipe_ctx->stream_res.tg) &&
       old_pipe_ctx->plane_state &&
       old_pipe_ctx->stream_res.tg == tg) {

   dc->hwss.plane_atomic_disconnect(dc, old_pipe_ctx);
   removed_pipe[i] = 1;

   DC_LOG_DC("Reset mpcc for pipe %d\n",
     old_pipe_ctx->pipe_idx);
  }
 }

 if (num_planes > 0)
  dcn20_program_all_pipe_in_tree(dc, top_pipe_to_program, context);


 if ((stream->num_wb_info > 0) && (dc->hwss.program_all_writeback_pipes_in_tree))
  dc->hwss.program_all_writeback_pipes_in_tree(dc, stream, context);

 if (interdependent_update)
  for (i = 0; i < dc->res_pool->pipe_count; i++) {
   struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];


   if (!pipe_ctx->stream || pipe_ctx->stream == stream ||
       !pipe_ctx->plane_state || !tg->funcs->is_tg_enabled(tg))
    continue;

   pipe_ctx->plane_res.hubp->funcs->hubp_setup_interdependent(
    pipe_ctx->plane_res.hubp,
    &pipe_ctx->dlg_regs,
    &pipe_ctx->ttu_regs);
  }

 if (interdependent_update)
  lock_all_pipes(dc, context, 0);
 else
  dcn20_pipe_control_lock(dc, top_pipe_to_program, 0);

 for (i = 0; i < dc->res_pool->pipe_count; i++)
  if (removed_pipe[i])
   dcn20_disable_plane(dc, &dc->current_state->res_ctx.pipe_ctx[i]);







 i = 0;
 if (num_planes > 0 && top_pipe_to_program &&
   (prev_top_pipe_to_program == ((void*)0) || prev_top_pipe_to_program->plane_state == ((void*)0))) {
  while (i < TIMEOUT_FOR_PIPE_ENABLE_MS &&
    top_pipe_to_program->plane_res.hubp->funcs->hubp_is_flip_pending(top_pipe_to_program->plane_res.hubp)) {
   i += 1;
   msleep(1);
  }
 }
}
