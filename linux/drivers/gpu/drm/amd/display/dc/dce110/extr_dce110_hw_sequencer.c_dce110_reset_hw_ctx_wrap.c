
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_17__ ;
typedef struct TYPE_23__ TYPE_14__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_30__ {TYPE_13__* mi; } ;
struct TYPE_28__ {TYPE_14__* tg; TYPE_12__* audio; } ;
struct pipe_ctx {TYPE_10__* stream; TYPE_6__ plane_res; TYPE_4__ stream_res; struct clock_source* clock_source; scalar_t__ top_pipe; } ;
struct TYPE_24__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_17__ res_ctx; } ;
struct TYPE_33__ {int (* disable_plane ) (struct dc*,struct pipe_ctx*) ;} ;
struct TYPE_26__ {int dynamic_audio; } ;
struct dc {TYPE_9__ hwss; int res_pool; TYPE_7__* current_state; TYPE_2__ caps; } ;
struct clock_source {TYPE_8__* funcs; } ;
struct TYPE_32__ {int (* cs_power_down ) (struct clock_source*) ;} ;
struct TYPE_20__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_31__ {int stream_count; TYPE_11__ res_ctx; } ;
struct TYPE_29__ {int (* free_mem_input ) (TYPE_13__*,int ) ;} ;
struct TYPE_27__ {int (* disable_crtc ) (TYPE_14__*) ;int (* set_blank ) (TYPE_14__*,int) ;} ;
struct TYPE_25__ {int (* az_disable ) (TYPE_12__*) ;} ;
struct TYPE_23__ {TYPE_3__* funcs; } ;
struct TYPE_22__ {TYPE_5__* funcs; } ;
struct TYPE_21__ {TYPE_1__* funcs; } ;
struct TYPE_19__ {int dpms_off; } ;


 int BREAK_TO_DEBUGGER () ;
 int MAX_PIPES ;
 int core_link_disable_stream (struct pipe_ctx*) ;
 int dm_error (char*) ;
 int hwss_wait_for_blank_complete (TYPE_14__*) ;
 scalar_t__ pipe_need_reprogram (struct pipe_ctx*,struct pipe_ctx*) ;
 scalar_t__ resource_get_clock_source_reference (TYPE_17__*,int ,struct clock_source*) ;
 int stub1 (TYPE_12__*) ;
 int stub2 (TYPE_14__*,int) ;
 int stub3 (TYPE_14__*) ;
 int stub4 (TYPE_13__*,int ) ;
 int stub5 (struct clock_source*) ;
 int stub6 (struct dc*,struct pipe_ctx*) ;
 int update_audio_usage (TYPE_11__*,int ,TYPE_12__*,int) ;

__attribute__((used)) static void dce110_reset_hw_ctx_wrap(
  struct dc *dc,
  struct dc_state *context)
{
 int i;



 for (i = 0; i < MAX_PIPES; i++) {
  struct pipe_ctx *pipe_ctx_old =
   &dc->current_state->res_ctx.pipe_ctx[i];
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];







  if (!pipe_ctx_old->stream || pipe_ctx_old->top_pipe)
   continue;

  if (!pipe_ctx->stream ||
    pipe_need_reprogram(pipe_ctx_old, pipe_ctx)) {
   struct clock_source *old_clk = pipe_ctx_old->clock_source;




   if (!pipe_ctx->stream || !pipe_ctx->stream->dpms_off) {
    core_link_disable_stream(pipe_ctx_old);


    if (pipe_ctx_old->stream_res.audio) {

     pipe_ctx_old->stream_res.audio->funcs->
       az_disable(pipe_ctx_old->stream_res.audio);


     if (dc->caps.dynamic_audio == 1) {


      update_audio_usage(&dc->current_state->res_ctx, dc->res_pool,
        pipe_ctx_old->stream_res.audio, 0);
      pipe_ctx_old->stream_res.audio = ((void*)0);
     }
    }
   }

   pipe_ctx_old->stream_res.tg->funcs->set_blank(pipe_ctx_old->stream_res.tg, 1);
   if (!hwss_wait_for_blank_complete(pipe_ctx_old->stream_res.tg)) {
    dm_error("DC: failed to blank crtc!\n");
    BREAK_TO_DEBUGGER();
   }
   pipe_ctx_old->stream_res.tg->funcs->disable_crtc(pipe_ctx_old->stream_res.tg);
   pipe_ctx_old->plane_res.mi->funcs->free_mem_input(
     pipe_ctx_old->plane_res.mi, dc->current_state->stream_count);

   if (old_clk && 0 == resource_get_clock_source_reference(&context->res_ctx,
          dc->res_pool,
          old_clk))
    old_clk->funcs->cs_power_down(old_clk);

   dc->hwss.disable_plane(dc, pipe_ctx_old);

   pipe_ctx_old->stream = ((void*)0);
  }
 }
}
