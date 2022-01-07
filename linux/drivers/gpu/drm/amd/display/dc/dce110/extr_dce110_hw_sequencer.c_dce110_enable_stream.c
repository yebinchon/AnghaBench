
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


typedef int uint32_t ;
struct timing_generator {TYPE_5__* funcs; } ;
struct TYPE_19__ {TYPE_9__* stream_enc; int * audio; struct timing_generator* tg; } ;
struct pipe_ctx {TYPE_8__ stream_res; TYPE_6__* stream; } ;
struct TYPE_12__ {int lane_count; } ;
struct dc_link {TYPE_4__* dc; TYPE_10__* link_enc; TYPE_1__ cur_link_settings; } ;
struct dc_crtc_timing {int h_addressable; int h_border_left; int h_border_right; } ;
typedef enum dc_lane_count { ____Placeholder_dc_lane_count } dc_lane_count ;
struct TYPE_20__ {TYPE_7__* funcs; int id; } ;
struct TYPE_18__ {int (* dp_audio_enable ) (TYPE_9__*) ;} ;
struct TYPE_17__ {int signal; struct dc_link* link; struct dc_crtc_timing timing; } ;
struct TYPE_16__ {int (* set_early_control ) (struct timing_generator*,int) ;} ;
struct TYPE_14__ {int (* update_info_frame ) (struct pipe_ctx*) ;} ;
struct TYPE_15__ {TYPE_3__ hwss; } ;
struct TYPE_13__ {int (* connect_dig_be_to_fe ) (TYPE_10__*,int ,int) ;} ;
struct TYPE_11__ {TYPE_2__* funcs; } ;


 scalar_t__ dc_is_dp_signal (int ) ;
 int stub1 (TYPE_10__*,int ,int) ;
 int stub2 (struct pipe_ctx*) ;
 int stub3 (struct timing_generator*,int) ;
 int stub4 (TYPE_9__*) ;

void dce110_enable_stream(struct pipe_ctx *pipe_ctx)
{
 enum dc_lane_count lane_count =
  pipe_ctx->stream->link->cur_link_settings.lane_count;

 struct dc_crtc_timing *timing = &pipe_ctx->stream->timing;
 struct dc_link *link = pipe_ctx->stream->link;


 uint32_t active_total_with_borders;
 uint32_t early_control = 0;
 struct timing_generator *tg = pipe_ctx->stream_res.tg;





 link->link_enc->funcs->connect_dig_be_to_fe(link->link_enc,
          pipe_ctx->stream_res.stream_enc->id, 1);

 link->dc->hwss.update_info_frame(pipe_ctx);


 active_total_with_borders =
   timing->h_addressable
    + timing->h_border_left
    + timing->h_border_right;

 if (lane_count != 0)
  early_control = active_total_with_borders % lane_count;

 if (early_control == 0)
  early_control = lane_count;

 tg->funcs->set_early_control(tg, early_control);


 if (pipe_ctx->stream_res.audio != ((void*)0)) {
  if (dc_is_dp_signal(pipe_ctx->stream->signal))
   pipe_ctx->stream_res.stream_enc->funcs->dp_audio_enable(pipe_ctx->stream_res.stream_enc);
 }




}
