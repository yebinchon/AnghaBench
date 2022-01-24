#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int dcfclk_cstate_latency; } ;
struct display_mode_lib {TYPE_1__ ip; } ;
typedef  int /*<<< orphan*/  display_ttu_regs_st ;
struct TYPE_21__ {int /*<<< orphan*/  dlg; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ display_rq_params_st ;
struct TYPE_20__ {int /*<<< orphan*/  src; } ;
struct TYPE_22__ {TYPE_2__ pipe; } ;
typedef  TYPE_4__ display_e2e_pipe_params_st ;
struct TYPE_23__ {int deepsleep_dcfclk_mhz; int t_srx_delay_us; int /*<<< orphan*/  total_flip_bytes; int /*<<< orphan*/  total_flip_bw; int /*<<< orphan*/  t_sr_wm_us; int /*<<< orphan*/  t_mclk_wm_us; int /*<<< orphan*/  mem_trip_us; int /*<<< orphan*/  t_extra_us; int /*<<< orphan*/  t_urg_wm_us; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ display_dlg_sys_params_st ;
typedef  int /*<<< orphan*/  display_dlg_regs_st ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct display_mode_lib*,TYPE_4__*,unsigned int const,unsigned int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct display_mode_lib*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int const) ; 
 int FUNC3 (struct display_mode_lib*,TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC4 (struct display_mode_lib*,TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (struct display_mode_lib*,TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC6 (struct display_mode_lib*,TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC7 (struct display_mode_lib*,TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC8 (struct display_mode_lib*,TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC9 (struct display_mode_lib*,TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC10 (struct display_mode_lib*,TYPE_4__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC11 (struct display_mode_lib*,TYPE_5__) ; 

void FUNC12(struct display_mode_lib *mode_lib,
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

	// Get watermark and Tex.
	dlg_sys_param.t_urg_wm_us = FUNC10(mode_lib, e2e_pipe_param, num_pipes);
	dlg_sys_param.deepsleep_dcfclk_mhz = FUNC3(mode_lib,
			e2e_pipe_param,
			num_pipes);
	dlg_sys_param.t_extra_us = FUNC6(mode_lib, e2e_pipe_param, num_pipes);
	dlg_sys_param.mem_trip_us = FUNC8(mode_lib, e2e_pipe_param, num_pipes);
	dlg_sys_param.t_mclk_wm_us = FUNC7(mode_lib, e2e_pipe_param, num_pipes);
	dlg_sys_param.t_sr_wm_us = FUNC9(mode_lib, e2e_pipe_param, num_pipes);
	dlg_sys_param.total_flip_bw = FUNC4(mode_lib,
			e2e_pipe_param,
			num_pipes);
	dlg_sys_param.total_flip_bytes = FUNC5(mode_lib,
			e2e_pipe_param,
			num_pipes);
	dlg_sys_param.t_srx_delay_us = mode_lib->ip.dcfclk_cstate_latency
			/ dlg_sys_param.deepsleep_dcfclk_mhz; // TODO: Deprecated

	FUNC11(mode_lib, dlg_sys_param);

	// system parameter calculation done

	FUNC2("DML_DLG: Calculation for pipe[%d] start\n\n", pipe_idx);
	FUNC1(mode_lib, &rq_param, e2e_pipe_param[pipe_idx].pipe.src);
	FUNC0(mode_lib,
			e2e_pipe_param,
			num_pipes,
			pipe_idx,
			dlg_regs,
			ttu_regs,
			rq_param.dlg,
			dlg_sys_param,
			cstate_en,
			pstate_en);
	FUNC2("DML_DLG: Calculation for pipe[%d] end\n", pipe_idx);
}