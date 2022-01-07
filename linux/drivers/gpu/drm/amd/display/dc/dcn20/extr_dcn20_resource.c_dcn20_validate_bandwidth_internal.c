
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {size_t num_states; } ;
struct TYPE_10__ {TYPE_3__ soc; int * ValidationStatus; } ;
struct TYPE_11__ {TYPE_4__ vba; } ;
struct TYPE_12__ {TYPE_5__ dml; } ;
struct dc_state {TYPE_6__ bw_ctx; } ;
struct dc {TYPE_2__* ctx; TYPE_1__* res_pool; } ;
typedef int display_e2e_pipe_params_st ;
struct TYPE_8__ {int logger; } ;
struct TYPE_7__ {int pipe_count; } ;


 int BW_VAL_TRACE_COUNT () ;
 int BW_VAL_TRACE_END_VOLTAGE_LEVEL () ;
 int BW_VAL_TRACE_END_WATERMARKS () ;
 int BW_VAL_TRACE_FINISH () ;
 int BW_VAL_TRACE_SETUP () ;
 int BW_VAL_TRACE_SKIP (int ) ;
 int DC_LOGGER_INIT (int ) ;
 int DC_LOG_WARNING (char*,int ) ;
 int GFP_KERNEL ;
 int MAX_PIPES ;
 int dcn20_calculate_dlg_params (struct dc*,struct dc_state*,int *,int,int) ;
 int dcn20_calculate_wm (struct dc*,struct dc_state*,int *,int*,int*,int) ;
 int dcn20_fast_validate_bw (struct dc*,struct dc_state*,int *,int*,int*,int*) ;
 int dml_get_status_message (int ) ;
 int fail ;
 int fast ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static bool dcn20_validate_bandwidth_internal(struct dc *dc, struct dc_state *context,
  bool fast_validate)
{
 bool out = 0;

 BW_VAL_TRACE_SETUP();

 int vlevel = 0;
 int pipe_split_from[MAX_PIPES];
 int pipe_cnt = 0;
 display_e2e_pipe_params_st *pipes = kzalloc(dc->res_pool->pipe_count * sizeof(display_e2e_pipe_params_st), GFP_KERNEL);
 DC_LOGGER_INIT(dc->ctx->logger);

 BW_VAL_TRACE_COUNT();

 out = dcn20_fast_validate_bw(dc, context, pipes, &pipe_cnt, pipe_split_from, &vlevel);

 if (pipe_cnt == 0)
  goto validate_out;

 if (!out)
  goto validate_fail;

 BW_VAL_TRACE_END_VOLTAGE_LEVEL();

 if (fast_validate) {
  BW_VAL_TRACE_SKIP(fast);
  goto validate_out;
 }

 dcn20_calculate_wm(dc, context, pipes, &pipe_cnt, pipe_split_from, vlevel);
 dcn20_calculate_dlg_params(dc, context, pipes, pipe_cnt, vlevel);

 BW_VAL_TRACE_END_WATERMARKS();

 goto validate_out;

validate_fail:
 DC_LOG_WARNING("Mode Validation Warning: %s failed validation.\n",
  dml_get_status_message(context->bw_ctx.dml.vba.ValidationStatus[context->bw_ctx.dml.vba.soc.num_states]));

 BW_VAL_TRACE_SKIP(fail);
 out = 0;

validate_out:
 kfree(pipes);

 BW_VAL_TRACE_FINISH();

 return out;
}
