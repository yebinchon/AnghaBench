
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


struct display_mode_lib {int dummy; } ;
struct TYPE_10__ {double dram_clock_change_latency_us; double dummy_pstate_latency_us; } ;
struct TYPE_12__ {TYPE_4__ soc; } ;
struct TYPE_7__ {int p_state_change_support; } ;
struct TYPE_8__ {TYPE_1__ clk; } ;
struct TYPE_9__ {TYPE_2__ dcn; } ;
struct TYPE_11__ {TYPE_6__ dml; TYPE_3__ bw; } ;
struct dc_state {TYPE_5__ bw_ctx; } ;
struct dc {int dml; } ;


 int ASSERT (int) ;
 int dcn20_validate_bandwidth_internal (struct dc*,struct dc_state*,int) ;
 int memcpy (TYPE_6__*,int *,int) ;

bool dcn20_validate_bandwidth(struct dc *dc, struct dc_state *context,
  bool fast_validate)
{
 bool voltage_supported = 0;
 bool full_pstate_supported = 0;
 bool dummy_pstate_supported = 0;
 double p_state_latency_us = context->bw_ctx.dml.soc.dram_clock_change_latency_us;

 if (fast_validate)
  return dcn20_validate_bandwidth_internal(dc, context, 1);



 voltage_supported = dcn20_validate_bandwidth_internal(dc, context, 0);
 full_pstate_supported = context->bw_ctx.bw.dcn.clk.p_state_change_support;

 if (context->bw_ctx.dml.soc.dummy_pstate_latency_us == 0 ||
  (voltage_supported && full_pstate_supported)) {
  context->bw_ctx.bw.dcn.clk.p_state_change_support = 1;
  goto restore_dml_state;
 }


 context->bw_ctx.dml.soc.dram_clock_change_latency_us = context->bw_ctx.dml.soc.dummy_pstate_latency_us;

 voltage_supported = dcn20_validate_bandwidth_internal(dc, context, 0);
 dummy_pstate_supported = context->bw_ctx.bw.dcn.clk.p_state_change_support;

 if (voltage_supported && dummy_pstate_supported) {
  context->bw_ctx.bw.dcn.clk.p_state_change_support = 0;
  goto restore_dml_state;
 }


 ASSERT(0);

restore_dml_state:
 memcpy(&context->bw_ctx.dml, &dc->dml, sizeof(struct display_mode_lib));
 context->bw_ctx.dml.soc.dram_clock_change_latency_us = p_state_latency_us;

 return voltage_supported;
}
