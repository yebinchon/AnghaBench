#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  void* uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_7__ {int /*<<< orphan*/  atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_8__ {void* cl_kf; void* clk_frac; } ;
struct TYPE_10__ {void* bw_ctrl; void* dll_speed; void* half_rate; void* qdr; void* yclk_sel; void* vco_mode; void* mpll_post_divider; TYPE_2__ mpll_fb_divider; } ;
typedef  TYPE_4__ pp_atomctrl_memory_clock_param ;
struct TYPE_9__ {int /*<<< orphan*/  usFbDiv; int /*<<< orphan*/  usFbDivFrac; } ;
struct TYPE_11__ {int ucPllCntlFlag; scalar_t__ ucBWCntl; scalar_t__ ucDllSpeed; scalar_t__ ucPostDiv; TYPE_3__ ulFbDiv; scalar_t__ ucInputFlag; int /*<<< orphan*/  ulClock; } ;
typedef  TYPE_5__ COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1 ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  ComputeMemoryClockParam ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MPLL_CNTL_FLAG_AD_HALF_RATE ; 
 int MPLL_CNTL_FLAG_BYPASS_DQ_PLL ; 
 int MPLL_CNTL_FLAG_QDR_ENABLE ; 
 int MPLL_CNTL_FLAG_VCO_MODE_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(
		struct pp_hwmgr *hwmgr,
		uint32_t clock_value,
		pp_atomctrl_memory_clock_param *mpll_param,
		bool strobe_mode)
{
	struct amdgpu_device *adev = hwmgr->adev;
	COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1 mpll_parameters;
	int result;

	mpll_parameters.ulClock = FUNC2(clock_value);
	mpll_parameters.ucInputFlag = (uint8_t)((strobe_mode) ? 1 : 0);

	result = FUNC1(adev->mode_info.atom_context,
		 FUNC0(COMMAND, ComputeMemoryClockParam),
		(uint32_t *)&mpll_parameters);

	if (0 == result) {
		mpll_param->mpll_fb_divider.clk_frac =
			FUNC3(mpll_parameters.ulFbDiv.usFbDivFrac);
		mpll_param->mpll_fb_divider.cl_kf =
			FUNC3(mpll_parameters.ulFbDiv.usFbDiv);
		mpll_param->mpll_post_divider =
			(uint32_t)mpll_parameters.ucPostDiv;
		mpll_param->vco_mode =
			(uint32_t)(mpll_parameters.ucPllCntlFlag &
					MPLL_CNTL_FLAG_VCO_MODE_MASK);
		mpll_param->yclk_sel =
			(uint32_t)((mpll_parameters.ucPllCntlFlag &
						MPLL_CNTL_FLAG_BYPASS_DQ_PLL) ? 1 : 0);
		mpll_param->qdr =
			(uint32_t)((mpll_parameters.ucPllCntlFlag &
						MPLL_CNTL_FLAG_QDR_ENABLE) ? 1 : 0);
		mpll_param->half_rate =
			(uint32_t)((mpll_parameters.ucPllCntlFlag &
						MPLL_CNTL_FLAG_AD_HALF_RATE) ? 1 : 0);
		mpll_param->dll_speed =
			(uint32_t)(mpll_parameters.ucDllSpeed);
		mpll_param->bw_ctrl =
			(uint32_t)(mpll_parameters.ucBWCntl);
	}

	return result;
}