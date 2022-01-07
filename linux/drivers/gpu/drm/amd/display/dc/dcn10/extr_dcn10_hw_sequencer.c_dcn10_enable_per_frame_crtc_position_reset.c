
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* tg; } ;
struct pipe_ctx {TYPE_3__ stream_res; TYPE_2__* stream; } ;
struct dc_context {int dummy; } ;
struct dc {struct dc_context* ctx; } ;
struct TYPE_9__ {TYPE_1__* funcs; } ;
struct TYPE_7__ {int triggered_crtc_reset; } ;
struct TYPE_6__ {int (* enable_crtc_reset ) (TYPE_4__*,int ,int *) ;} ;


 int DC_SYNC_INFO (char*) ;
 int stub1 (TYPE_4__*,int ,int *) ;
 int wait_for_reset_trigger_to_occur (struct dc_context*,TYPE_4__*) ;

__attribute__((used)) static void dcn10_enable_per_frame_crtc_position_reset(
 struct dc *dc,
 int group_size,
 struct pipe_ctx *grouped_pipes[])
{
 struct dc_context *dc_ctx = dc->ctx;
 int i;

 DC_SYNC_INFO("Setting up\n");
 for (i = 0; i < group_size; i++)
  if (grouped_pipes[i]->stream_res.tg->funcs->enable_crtc_reset)
   grouped_pipes[i]->stream_res.tg->funcs->enable_crtc_reset(
     grouped_pipes[i]->stream_res.tg,
     0,
     &grouped_pipes[i]->stream->triggered_crtc_reset);

 DC_SYNC_INFO("Waiting for trigger\n");

 for (i = 0; i < group_size; i++)
  wait_for_reset_trigger_to_occur(dc_ctx, grouped_pipes[i]->stream_res.tg);

 DC_SYNC_INFO("Multi-display sync is complete\n");
}
