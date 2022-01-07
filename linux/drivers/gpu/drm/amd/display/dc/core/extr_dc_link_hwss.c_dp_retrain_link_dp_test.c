
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_19__ {TYPE_12__* stream_enc; TYPE_13__* audio; } ;
struct pipe_ctx {TYPE_11__ stream_res; TYPE_6__* clock_source; TYPE_3__* stream; int prev_odm_pipe; int top_pipe; } ;
struct dc_link_settings {int dummy; } ;
struct dc_link {TYPE_8__* dc; struct dc_link_settings cur_link_settings; TYPE_14__* link_enc; } ;
struct TYPE_31__ {int (* az_enable ) (TYPE_13__*) ;int (* az_disable ) (TYPE_13__*) ;} ;
struct TYPE_29__ {int (* unblank_stream ) (struct pipe_ctx*,struct dc_link_settings*) ;int (* enable_stream ) (struct pipe_ctx*) ;int (* disable_stream ) (struct pipe_ctx*) ;} ;
struct TYPE_26__ {int az_endpoint_mute_only; } ;
struct TYPE_30__ {TYPE_7__ hwss; TYPE_4__ debug; TYPE_2__* current_state; } ;
struct TYPE_28__ {int id; } ;
struct TYPE_27__ {int (* enable_dp_output ) (TYPE_14__*,struct dc_link_settings*,int ) ;int (* disable_output ) (TYPE_14__*,int ) ;} ;
struct TYPE_25__ {int * link; } ;
struct TYPE_23__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_24__ {TYPE_1__ res_ctx; } ;
struct TYPE_22__ {TYPE_5__* funcs; } ;
struct TYPE_21__ {TYPE_9__* funcs; } ;
struct TYPE_20__ {TYPE_10__* funcs; } ;
struct TYPE_18__ {int (* audio_mute_control ) (TYPE_12__*,int) ;int (* dp_blank ) (TYPE_12__*) ;} ;


 int DP_TEST_PATTERN_VIDEO_MODE ;
 int LINK_TRAINING_ATTEMPTS ;
 unsigned int MAX_PIPES ;
 int SIGNAL_TYPE_DISPLAY_PORT ;
 int dp_receiver_power_ctrl (struct dc_link*,int) ;
 int dp_set_hw_test_pattern (struct dc_link*,int ,int *,int ) ;
 int memset (struct dc_link_settings*,int ,int) ;
 int perform_link_training_with_retries (struct dc_link*,struct dc_link_settings*,int,int ) ;
 int stub1 (TYPE_12__*) ;
 int stub2 (struct pipe_ctx*) ;
 int stub3 (TYPE_13__*) ;
 int stub4 (TYPE_14__*,int ) ;
 int stub5 (TYPE_14__*,struct dc_link_settings*,int ) ;
 int stub6 (struct pipe_ctx*) ;
 int stub7 (struct pipe_ctx*,struct dc_link_settings*) ;
 int stub8 (TYPE_13__*) ;
 int stub9 (TYPE_12__*,int) ;
 int udelay (int) ;

void dp_retrain_link_dp_test(struct dc_link *link,
   struct dc_link_settings *link_setting,
   bool skip_video_pattern)
{
 struct pipe_ctx *pipes =
   &link->dc->current_state->res_ctx.pipe_ctx[0];
 unsigned int i;

 for (i = 0; i < MAX_PIPES; i++) {
  if (pipes[i].stream != ((void*)0) &&
   !pipes[i].top_pipe && !pipes[i].prev_odm_pipe &&
   pipes[i].stream->link != ((void*)0) &&
   pipes[i].stream_res.stream_enc != ((void*)0)) {
   udelay(100);

   pipes[i].stream_res.stream_enc->funcs->dp_blank(
     pipes[i].stream_res.stream_enc);


   dp_set_hw_test_pattern(link,
     DP_TEST_PATTERN_VIDEO_MODE, ((void*)0), 0);

   dp_receiver_power_ctrl(link, 0);

   link->dc->hwss.disable_stream(&pipes[i]);
   if ((&pipes[i])->stream_res.audio && !link->dc->debug.az_endpoint_mute_only)
    (&pipes[i])->stream_res.audio->funcs->az_disable((&pipes[i])->stream_res.audio);

   link->link_enc->funcs->disable_output(
     link->link_enc,
     SIGNAL_TYPE_DISPLAY_PORT);


   memset(&link->cur_link_settings, 0,
    sizeof(link->cur_link_settings));

   link->link_enc->funcs->enable_dp_output(
      link->link_enc,
      link_setting,
      pipes[i].clock_source->id);
   link->cur_link_settings = *link_setting;

   dp_receiver_power_ctrl(link, 1);

   perform_link_training_with_retries(
     link,
     link_setting,
     skip_video_pattern,
     LINK_TRAINING_ATTEMPTS);


   link->dc->hwss.enable_stream(&pipes[i]);

   link->dc->hwss.unblank_stream(&pipes[i],
     link_setting);

   if (pipes[i].stream_res.audio) {


    pipes[i].stream_res.audio->funcs->az_enable(
      pipes[i].stream_res.audio);




    pipes[i].stream_res.stream_enc->funcs->
    audio_mute_control(
     pipes[i].stream_res.stream_enc, 0);
   }
  }
 }
}
