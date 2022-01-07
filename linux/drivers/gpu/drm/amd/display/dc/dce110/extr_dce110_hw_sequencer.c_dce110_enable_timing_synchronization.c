
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* tg; } ;
struct pipe_ctx {TYPE_2__ stream_res; } ;
struct dcp_gsl_params {scalar_t__ gsl_group; int gsl_master; int member_0; } ;
struct dc_context {int dummy; } ;
struct dc {struct dc_context* ctx; } ;
struct TYPE_10__ {TYPE_1__* funcs; int inst; } ;
struct TYPE_8__ {int (* tear_down_global_swap_lock ) (TYPE_3__*) ;int (* disable_reset_trigger ) (TYPE_3__*) ;int (* enable_reset_trigger ) (TYPE_3__*,scalar_t__) ;int (* setup_global_swap_lock ) (TYPE_3__*,struct dcp_gsl_params*) ;} ;


 int DC_SYNC_INFO (char*) ;
 int stub1 (TYPE_3__*,struct dcp_gsl_params*) ;
 int stub2 (TYPE_3__*,scalar_t__) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_3__*) ;
 int wait_for_reset_trigger_to_occur (struct dc_context*,TYPE_3__*) ;

__attribute__((used)) static void dce110_enable_timing_synchronization(
  struct dc *dc,
  int group_index,
  int group_size,
  struct pipe_ctx *grouped_pipes[])
{
 struct dc_context *dc_ctx = dc->ctx;
 struct dcp_gsl_params gsl_params = { 0 };
 int i;

 DC_SYNC_INFO("GSL: Setting-up...\n");




 gsl_params.gsl_group = 0;
 gsl_params.gsl_master = grouped_pipes[0]->stream_res.tg->inst;

 for (i = 0; i < group_size; i++)
  grouped_pipes[i]->stream_res.tg->funcs->setup_global_swap_lock(
     grouped_pipes[i]->stream_res.tg, &gsl_params);


 DC_SYNC_INFO("GSL: enabling trigger-reset\n");

 for (i = 1 ; i < group_size; i++)
  grouped_pipes[i]->stream_res.tg->funcs->enable_reset_trigger(
    grouped_pipes[i]->stream_res.tg,
    gsl_params.gsl_group);

 for (i = 1 ; i < group_size; i++) {
  DC_SYNC_INFO("GSL: waiting for reset to occur.\n");
  wait_for_reset_trigger_to_occur(dc_ctx, grouped_pipes[i]->stream_res.tg);
  grouped_pipes[i]->stream_res.tg->funcs->disable_reset_trigger(
    grouped_pipes[i]->stream_res.tg);
 }



 DC_SYNC_INFO("GSL: Restoring register states.\n");
 for (i = 0; i < group_size; i++)
  grouped_pipes[i]->stream_res.tg->funcs->tear_down_global_swap_lock(grouped_pipes[i]->stream_res.tg);

 DC_SYNC_INFO("GSL: Set-up complete.\n");
}
