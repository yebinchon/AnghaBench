#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct pp_hwmgr {int dummy; } ;
struct pp_display_clock_request {int clock_type; int clock_freq_in_khz; } ;
typedef  enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;
typedef  int DSPCLK_e ;

/* Variables and functions */
 int DSPCLK_DCEFCLK ; 
 int DSPCLK_DISPCLK ; 
 int DSPCLK_PHYCLK ; 
 int DSPCLK_PIXCLK ; 
 int /*<<< orphan*/  PPSMC_MSG_RequestDisplayClockByFreq ; 
#define  amd_pp_dcef_clock 131 
#define  amd_pp_disp_clock 130 
#define  amd_pp_phy_clock 129 
#define  amd_pp_pixel_clock 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct pp_hwmgr *hwmgr,
		struct pp_display_clock_request *clock_req)
{
	int result = 0;
	enum amd_pp_clock_type clk_type = clock_req->clock_type;
	uint32_t clk_freq = clock_req->clock_freq_in_khz / 1000;
	DSPCLK_e clk_select = 0;
	uint32_t clk_request = 0;

	switch (clk_type) {
	case amd_pp_dcef_clock:
		clk_select = DSPCLK_DCEFCLK;
		break;
	case amd_pp_disp_clock:
		clk_select = DSPCLK_DISPCLK;
		break;
	case amd_pp_pixel_clock:
		clk_select = DSPCLK_PIXCLK;
		break;
	case amd_pp_phy_clock:
		clk_select = DSPCLK_PHYCLK;
		break;
	default:
		FUNC0("[DisplayClockVoltageRequest]Invalid Clock Type!");
		result = -1;
		break;
	}

	if (!result) {
		clk_request = (clk_freq << 16) | clk_select;
		FUNC1(hwmgr,
				PPSMC_MSG_RequestDisplayClockByFreq,
				clk_request);
	}

	return result;
}