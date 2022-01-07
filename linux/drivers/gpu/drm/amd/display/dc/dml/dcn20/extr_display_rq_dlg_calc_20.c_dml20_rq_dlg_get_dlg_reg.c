
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int dcfclk_cstate_latency; } ;
struct display_mode_lib {TYPE_1__ ip; } ;
typedef int display_ttu_regs_st ;
struct TYPE_21__ {int dlg; int member_0; } ;
typedef TYPE_3__ display_rq_params_st ;
struct TYPE_20__ {int src; } ;
struct TYPE_22__ {TYPE_2__ pipe; } ;
typedef TYPE_4__ display_e2e_pipe_params_st ;
struct TYPE_23__ {int deepsleep_dcfclk_mhz; int t_srx_delay_us; int total_flip_bytes; int total_flip_bw; int t_sr_wm_us; int t_mclk_wm_us; int mem_trip_us; int t_extra_us; int t_urg_wm_us; int member_0; } ;
typedef TYPE_5__ display_dlg_sys_params_st ;
typedef int display_dlg_regs_st ;


 int dml20_rq_dlg_get_dlg_params (struct display_mode_lib*,TYPE_4__*,unsigned int const,unsigned int const,int *,int *,int ,TYPE_5__,int const,int const) ;
 int dml20_rq_dlg_get_rq_params (struct display_mode_lib*,TYPE_3__*,int ) ;
 int dml_print (char*,unsigned int const) ;
 int get_clk_dcf_deepsleep (struct display_mode_lib*,TYPE_4__*,unsigned int const) ;
 int get_total_immediate_flip_bw (struct display_mode_lib*,TYPE_4__*,unsigned int const) ;
 int get_total_immediate_flip_bytes (struct display_mode_lib*,TYPE_4__*,unsigned int const) ;
 int get_urgent_extra_latency (struct display_mode_lib*,TYPE_4__*,unsigned int const) ;
 int get_wm_dram_clock_change (struct display_mode_lib*,TYPE_4__*,unsigned int const) ;
 int get_wm_memory_trip (struct display_mode_lib*,TYPE_4__*,unsigned int const) ;
 int get_wm_stutter_enter_exit (struct display_mode_lib*,TYPE_4__*,unsigned int const) ;
 int get_wm_urgent (struct display_mode_lib*,TYPE_4__*,unsigned int const) ;
 int print__dlg_sys_params_st (struct display_mode_lib*,TYPE_5__) ;

void dml20_rq_dlg_get_dlg_reg(struct display_mode_lib *mode_lib,
  display_dlg_regs_st *dlg_regs,
  display_ttu_regs_st *ttu_regs,
  display_e2e_pipe_params_st *e2e_pipe_param,
  const unsigned int num_pipes,
  const unsigned int pipe_idx,
  const bool cstate_en,
  const bool pstate_en,
  const bool vm_en,
  const bool ignore_viewport_pos,
  const bool immediate_flip_support)
{
 display_rq_params_st rq_param = {0};
 display_dlg_sys_params_st dlg_sys_param = {0};


 dlg_sys_param.t_urg_wm_us = get_wm_urgent(mode_lib, e2e_pipe_param, num_pipes);
 dlg_sys_param.deepsleep_dcfclk_mhz = get_clk_dcf_deepsleep(mode_lib,
   e2e_pipe_param,
   num_pipes);
 dlg_sys_param.t_extra_us = get_urgent_extra_latency(mode_lib, e2e_pipe_param, num_pipes);
 dlg_sys_param.mem_trip_us = get_wm_memory_trip(mode_lib, e2e_pipe_param, num_pipes);
 dlg_sys_param.t_mclk_wm_us = get_wm_dram_clock_change(mode_lib, e2e_pipe_param, num_pipes);
 dlg_sys_param.t_sr_wm_us = get_wm_stutter_enter_exit(mode_lib, e2e_pipe_param, num_pipes);
 dlg_sys_param.total_flip_bw = get_total_immediate_flip_bw(mode_lib,
   e2e_pipe_param,
   num_pipes);
 dlg_sys_param.total_flip_bytes = get_total_immediate_flip_bytes(mode_lib,
   e2e_pipe_param,
   num_pipes);
 dlg_sys_param.t_srx_delay_us = mode_lib->ip.dcfclk_cstate_latency
   / dlg_sys_param.deepsleep_dcfclk_mhz;

 print__dlg_sys_params_st(mode_lib, dlg_sys_param);



 dml_print("DML_DLG: Calculation for pipe[%d] start\n\n", pipe_idx);
 dml20_rq_dlg_get_rq_params(mode_lib, &rq_param, e2e_pipe_param[pipe_idx].pipe.src);
 dml20_rq_dlg_get_dlg_params(mode_lib,
   e2e_pipe_param,
   num_pipes,
   pipe_idx,
   dlg_regs,
   ttu_regs,
   rq_param.dlg,
   dlg_sys_param,
   cstate_en,
   pstate_en);
 dml_print("DML_DLG: Calculation for pipe[%d] end\n", pipe_idx);
}
