
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct pp_smu_funcs {int dummy; } ;
struct TYPE_16__ {TYPE_8__* stream_enc; TYPE_2__* audio; } ;
struct pipe_ctx {TYPE_6__ stream_res; TYPE_4__* stream; } ;
struct dc {TYPE_3__* res_pool; struct clk_mgr* clk_mgr; } ;
struct clk_mgr {TYPE_7__* funcs; } ;
struct TYPE_18__ {TYPE_5__* funcs; } ;
struct TYPE_17__ {int (* enable_pme_wa ) (struct clk_mgr*) ;} ;
struct TYPE_15__ {int (* hdmi_audio_disable ) (TYPE_8__*) ;int (* dp_audio_disable ) (TYPE_8__*) ;int (* audio_mute_control ) (TYPE_8__*,int) ;} ;
struct TYPE_14__ {int signal; TYPE_1__* ctx; } ;
struct TYPE_13__ {struct pp_smu_funcs* pp_smu; } ;
struct TYPE_12__ {int enabled; } ;
struct TYPE_11__ {struct dc* dc; } ;


 scalar_t__ dc_is_dp_signal (int ) ;
 int stub1 (TYPE_8__*,int) ;
 int stub2 (TYPE_8__*) ;
 int stub3 (TYPE_8__*) ;
 int stub4 (struct clk_mgr*) ;

void dce110_disable_audio_stream(struct pipe_ctx *pipe_ctx)
{
 struct dc *dc;
 struct pp_smu_funcs *pp_smu = ((void*)0);
 struct clk_mgr *clk_mgr;

 if (!pipe_ctx || !pipe_ctx->stream)
  return;

 dc = pipe_ctx->stream->ctx->dc;
 clk_mgr = dc->clk_mgr;

 if (pipe_ctx->stream_res.audio && pipe_ctx->stream_res.audio->enabled == 0)
  return;

 pipe_ctx->stream_res.stream_enc->funcs->audio_mute_control(
   pipe_ctx->stream_res.stream_enc, 1);
 if (pipe_ctx->stream_res.audio) {
  pipe_ctx->stream_res.audio->enabled = 0;

  if (dc->res_pool->pp_smu)
   pp_smu = dc->res_pool->pp_smu;

  if (dc_is_dp_signal(pipe_ctx->stream->signal))
   pipe_ctx->stream_res.stream_enc->funcs->dp_audio_disable(
     pipe_ctx->stream_res.stream_enc);
  else
   pipe_ctx->stream_res.stream_enc->funcs->hdmi_audio_disable(
     pipe_ctx->stream_res.stream_enc);

  if (clk_mgr->funcs->enable_pme_wa)

   clk_mgr->funcs->enable_pme_wa(clk_mgr);






 }
}
