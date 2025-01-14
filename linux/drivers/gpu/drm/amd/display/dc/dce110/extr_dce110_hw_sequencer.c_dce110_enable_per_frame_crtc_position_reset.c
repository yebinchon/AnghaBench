
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* tg; } ;
struct pipe_ctx {TYPE_3__ stream_res; TYPE_1__* stream; } ;
struct dcp_gsl_params {scalar_t__ gsl_master; scalar_t__ gsl_group; int member_0; } ;
struct dc_context {int dummy; } ;
struct dc {struct dc_context* ctx; } ;
struct TYPE_11__ {TYPE_2__* funcs; } ;
struct TYPE_9__ {int (* tear_down_global_swap_lock ) (TYPE_4__*) ;int (* enable_crtc_reset ) (TYPE_4__*,scalar_t__,int *) ;int (* setup_global_swap_lock ) (TYPE_4__*,struct dcp_gsl_params*) ;} ;
struct TYPE_8__ {int triggered_crtc_reset; } ;


 int DC_SYNC_INFO (char*) ;
 int stub1 (TYPE_4__*,struct dcp_gsl_params*) ;
 int stub2 (TYPE_4__*,scalar_t__,int *) ;
 int stub3 (TYPE_4__*) ;
 int wait_for_reset_trigger_to_occur (struct dc_context*,TYPE_4__*) ;

__attribute__((used)) static void dce110_enable_per_frame_crtc_position_reset(
  struct dc *dc,
  int group_size,
  struct pipe_ctx *grouped_pipes[])
{
 struct dc_context *dc_ctx = dc->ctx;
 struct dcp_gsl_params gsl_params = { 0 };
 int i;

 gsl_params.gsl_group = 0;
 gsl_params.gsl_master = 0;

 for (i = 0; i < group_size; i++)
  grouped_pipes[i]->stream_res.tg->funcs->setup_global_swap_lock(
     grouped_pipes[i]->stream_res.tg, &gsl_params);

 DC_SYNC_INFO("GSL: enabling trigger-reset\n");

 for (i = 1; i < group_size; i++)
  grouped_pipes[i]->stream_res.tg->funcs->enable_crtc_reset(
    grouped_pipes[i]->stream_res.tg,
    gsl_params.gsl_master,
    &grouped_pipes[i]->stream->triggered_crtc_reset);

 DC_SYNC_INFO("GSL: waiting for reset to occur.\n");
 for (i = 1; i < group_size; i++)
  wait_for_reset_trigger_to_occur(dc_ctx, grouped_pipes[i]->stream_res.tg);

 for (i = 0; i < group_size; i++)
  grouped_pipes[i]->stream_res.tg->funcs->tear_down_global_swap_lock(grouped_pipes[i]->stream_res.tg);

}
