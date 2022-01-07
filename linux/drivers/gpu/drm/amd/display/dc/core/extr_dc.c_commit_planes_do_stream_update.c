
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_28__ {TYPE_13__* abm; TYPE_15__* tg; TYPE_10__* audio; TYPE_11__* opp; } ;
struct pipe_ctx {TYPE_9__ stream_res; struct pipe_ctx* next_odm_pipe; struct dc_stream_state* stream; int prev_odm_pipe; int top_pipe; } ;
struct dc_stream_update {scalar_t__ abm_level; scalar_t__* dpms_off; scalar_t__ dsc_config; scalar_t__ dither_option; scalar_t__ output_csc_transform; scalar_t__ gamut_remap; scalar_t__ vsp_infopacket; scalar_t__ vsc_infopacket; scalar_t__ vrr_infopacket; scalar_t__ hdr_static_metadata; scalar_t__ periodic_interrupt1; scalar_t__ periodic_interrupt0; } ;
struct dc_stream_state {int abm_level; int clamping; int bit_depth_params; int use_dynamic_meta; } ;
struct TYPE_21__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_2__ res_ctx; } ;
struct TYPE_25__ {int (* pipe_control_lock ) (struct dc*,struct pipe_ctx*,int) ;int (* prepare_bandwidth ) (struct dc*,int ) ;int (* optimize_bandwidth ) (struct dc*,int ) ;int (* pipe_control_lock_global ) (struct dc*,struct pipe_ctx*,int) ;int (* update_info_frame ) (struct pipe_ctx*) ;int (* setup_periodic_interrupt ) (struct pipe_ctx*,int ) ;} ;
struct TYPE_23__ {int az_endpoint_mute_only; } ;
struct dc {TYPE_6__ hwss; int current_state; int optimize_seamless_boot; TYPE_4__ debug; TYPE_1__* res_pool; } ;
typedef enum surface_update_type { ____Placeholder_surface_update_type } surface_update_type ;
struct TYPE_27__ {int (* set_abm_level ) (TYPE_13__*,int ) ;} ;
struct TYPE_26__ {int (* is_blanked ) (TYPE_15__*) ;} ;
struct TYPE_24__ {int (* az_disable ) (TYPE_10__*) ;} ;
struct TYPE_22__ {int (* opp_program_fmt ) (TYPE_11__*,int *,int *) ;} ;
struct TYPE_20__ {int pipe_count; } ;
struct TYPE_19__ {TYPE_7__* funcs; } ;
struct TYPE_18__ {TYPE_8__* funcs; } ;
struct TYPE_17__ {TYPE_3__* funcs; } ;
struct TYPE_16__ {TYPE_5__* funcs; } ;


 int UPDATE_TYPE_FAST ;
 int VLINE0 ;
 int VLINE1 ;
 int core_link_disable_stream (struct pipe_ctx*) ;
 int core_link_enable_stream (int ,struct pipe_ctx*) ;
 int dc_stream_program_csc_matrix (struct dc*,struct dc_stream_state*) ;
 int dc_stream_set_gamut_remap (struct dc*,struct dc_stream_state*) ;
 int dp_update_dsc_config (struct pipe_ctx*) ;
 int resource_build_bit_depth_reduction_params (struct dc_stream_state*,int *) ;
 int resource_build_info_frame (struct pipe_ctx*) ;
 int stub1 (struct pipe_ctx*,int ) ;
 int stub10 (struct dc*,int ) ;
 int stub11 (struct dc*,int ) ;
 int stub12 (struct dc*,struct pipe_ctx*,int) ;
 int stub13 (TYPE_15__*) ;
 int stub14 (TYPE_13__*,int ) ;
 int stub15 (TYPE_13__*,int ) ;
 int stub2 (struct pipe_ctx*,int ) ;
 int stub3 (struct pipe_ctx*) ;
 int stub4 (TYPE_11__*,int *,int *) ;
 int stub5 (TYPE_11__*,int *,int *) ;
 int stub6 (struct dc*,struct pipe_ctx*,int) ;
 int stub7 (struct dc*,struct pipe_ctx*,int) ;
 int stub8 (struct dc*,struct pipe_ctx*,int) ;
 int stub9 (TYPE_10__*) ;

__attribute__((used)) static void commit_planes_do_stream_update(struct dc *dc,
  struct dc_stream_state *stream,
  struct dc_stream_update *stream_update,
  enum surface_update_type update_type,
  struct dc_state *context)
{
 int j;


 for (j = 0; j < dc->res_pool->pipe_count; j++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[j];

  if (!pipe_ctx->top_pipe && !pipe_ctx->prev_odm_pipe && pipe_ctx->stream == stream) {

   if (stream_update->periodic_interrupt0 &&
     dc->hwss.setup_periodic_interrupt)
    dc->hwss.setup_periodic_interrupt(pipe_ctx, VLINE0);

   if (stream_update->periodic_interrupt1 &&
     dc->hwss.setup_periodic_interrupt)
    dc->hwss.setup_periodic_interrupt(pipe_ctx, VLINE1);

   if ((stream_update->hdr_static_metadata && !stream->use_dynamic_meta) ||
     stream_update->vrr_infopacket ||
     stream_update->vsc_infopacket ||
     stream_update->vsp_infopacket) {
    resource_build_info_frame(pipe_ctx);
    dc->hwss.update_info_frame(pipe_ctx);
   }

   if (stream_update->gamut_remap)
    dc_stream_set_gamut_remap(dc, stream);

   if (stream_update->output_csc_transform)
    dc_stream_program_csc_matrix(dc, stream);

   if (stream_update->dither_option) {



    resource_build_bit_depth_reduction_params(pipe_ctx->stream,
         &pipe_ctx->stream->bit_depth_params);
    pipe_ctx->stream_res.opp->funcs->opp_program_fmt(pipe_ctx->stream_res.opp,
      &stream->bit_depth_params,
      &stream->clamping);
   }
   if (update_type == UPDATE_TYPE_FAST)
    continue;

   if (stream_update->dpms_off) {
    dc->hwss.pipe_control_lock(dc, pipe_ctx, 1);

    if (*stream_update->dpms_off) {
     core_link_disable_stream(pipe_ctx);

     if (pipe_ctx->stream_res.audio && !dc->debug.az_endpoint_mute_only)
      pipe_ctx->stream_res.audio->funcs->az_disable(pipe_ctx->stream_res.audio);

     dc->hwss.optimize_bandwidth(dc, dc->current_state);
    } else {
     if (!dc->optimize_seamless_boot)
      dc->hwss.prepare_bandwidth(dc, dc->current_state);

     core_link_enable_stream(dc->current_state, pipe_ctx);
    }

    dc->hwss.pipe_control_lock(dc, pipe_ctx, 0);
   }

   if (stream_update->abm_level && pipe_ctx->stream_res.abm) {
    if (pipe_ctx->stream_res.tg->funcs->is_blanked) {

     if (!pipe_ctx->stream_res.tg->funcs->is_blanked(pipe_ctx->stream_res.tg))
      pipe_ctx->stream_res.abm->funcs->set_abm_level(
       pipe_ctx->stream_res.abm, stream->abm_level);
    } else
     pipe_ctx->stream_res.abm->funcs->set_abm_level(
      pipe_ctx->stream_res.abm, stream->abm_level);
   }
  }
 }
}
