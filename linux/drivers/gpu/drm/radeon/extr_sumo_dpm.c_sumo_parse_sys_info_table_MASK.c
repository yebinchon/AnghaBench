#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ucHtcTmpLmt; int ucHtcHystLmt; int /*<<< orphan*/  sAvail_SCLK; int /*<<< orphan*/  sDISPCLK_Voltage; scalar_t__ EnableBoost; int /*<<< orphan*/  ulBoostVid_2bit; int /*<<< orphan*/  ulBoostEngineCLock; int /*<<< orphan*/  SclkDpmTdpLimitBoost; int /*<<< orphan*/  GnbTdpLimit; int /*<<< orphan*/  SclkDpmTdpLimitPG; int /*<<< orphan*/  SclkDpmThrottleMargin; int /*<<< orphan*/  SclkDpmBoostMargin; int /*<<< orphan*/ * ulCSR_M3_ARB_CNTL_FS3D; int /*<<< orphan*/ * ulCSR_M3_ARB_CNTL_UVD; int /*<<< orphan*/ * ulCSR_M3_ARB_CNTL_DEFAULT; int /*<<< orphan*/  usBootUpNBVoltage; int /*<<< orphan*/  ulBootUpUMAClock; int /*<<< orphan*/  ulMinEngineClock; int /*<<< orphan*/  ulBootUpEngineClock; } ;
union igp_info {TYPE_2__ info_6; } ;
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int htc_tmp_lmt; int htc_hyst_lmt; int enable_boost; int /*<<< orphan*/  vid_mapping_table; int /*<<< orphan*/  sclk_voltage_mapping_table; int /*<<< orphan*/  disp_clk_voltage_mapping_table; int /*<<< orphan*/  boost_vid_2bit; void* boost_sclk; void* sclk_dpm_tdp_limit_boost; void* gnb_tdp_limit; void* sclk_dpm_tdp_limit_pg; void* sclk_dpm_throttle_margin; void* sclk_dpm_boost_margin; void** csr_m3_arb_cntl_fs3d; void** csr_m3_arb_cntl_uvd; void** csr_m3_arb_cntl_default; void* bootup_nb_voltage_index; void* bootup_uma_clk; void* min_sclk; void* bootup_sclk; } ;
struct sumo_power_info {TYPE_1__ sys_info; } ;
struct radeon_mode_info {TYPE_3__* atom_context; } ;
struct radeon_device {struct radeon_mode_info mode_info; } ;
struct TYPE_6__ {scalar_t__ bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IntegratedSystemInfo ; 
 int NUMBER_OF_M3ARB_PARAM_SETS ; 
 scalar_t__ FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ *,int*,int*,scalar_t__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sumo_power_info* FUNC8 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC9(struct radeon_device *rdev)
{
	struct sumo_power_info *pi = FUNC8(rdev);
	struct radeon_mode_info *mode_info = &rdev->mode_info;
	int index = FUNC1(DATA, IntegratedSystemInfo);
	union igp_info *igp_info;
	u8 frev, crev;
	u16 data_offset;
	int i;

	if (FUNC2(mode_info->atom_context, index, NULL,
				   &frev, &crev, &data_offset)) {
		igp_info = (union igp_info *)(mode_info->atom_context->bios +
					      data_offset);

		if (crev != 6) {
			FUNC0("Unsupported IGP table: %d %d\n", frev, crev);
			return -EINVAL;
		}
		pi->sys_info.bootup_sclk = FUNC4(igp_info->info_6.ulBootUpEngineClock);
		pi->sys_info.min_sclk = FUNC4(igp_info->info_6.ulMinEngineClock);
		pi->sys_info.bootup_uma_clk = FUNC4(igp_info->info_6.ulBootUpUMAClock);
		pi->sys_info.bootup_nb_voltage_index =
			FUNC3(igp_info->info_6.usBootUpNBVoltage);
		if (igp_info->info_6.ucHtcTmpLmt == 0)
			pi->sys_info.htc_tmp_lmt = 203;
		else
			pi->sys_info.htc_tmp_lmt = igp_info->info_6.ucHtcTmpLmt;
		if (igp_info->info_6.ucHtcHystLmt == 0)
			pi->sys_info.htc_hyst_lmt = 5;
		else
			pi->sys_info.htc_hyst_lmt = igp_info->info_6.ucHtcHystLmt;
		if (pi->sys_info.htc_tmp_lmt <= pi->sys_info.htc_hyst_lmt) {
			FUNC0("The htcTmpLmt should be larger than htcHystLmt.\n");
		}
		for (i = 0; i < NUMBER_OF_M3ARB_PARAM_SETS; i++) {
			pi->sys_info.csr_m3_arb_cntl_default[i] =
				FUNC4(igp_info->info_6.ulCSR_M3_ARB_CNTL_DEFAULT[i]);
			pi->sys_info.csr_m3_arb_cntl_uvd[i] =
				FUNC4(igp_info->info_6.ulCSR_M3_ARB_CNTL_UVD[i]);
			pi->sys_info.csr_m3_arb_cntl_fs3d[i] =
				FUNC4(igp_info->info_6.ulCSR_M3_ARB_CNTL_FS3D[i]);
		}
		pi->sys_info.sclk_dpm_boost_margin =
			FUNC4(igp_info->info_6.SclkDpmBoostMargin);
		pi->sys_info.sclk_dpm_throttle_margin =
			FUNC4(igp_info->info_6.SclkDpmThrottleMargin);
		pi->sys_info.sclk_dpm_tdp_limit_pg =
			FUNC3(igp_info->info_6.SclkDpmTdpLimitPG);
		pi->sys_info.gnb_tdp_limit = FUNC3(igp_info->info_6.GnbTdpLimit);
		pi->sys_info.sclk_dpm_tdp_limit_boost =
			FUNC3(igp_info->info_6.SclkDpmTdpLimitBoost);
		pi->sys_info.boost_sclk = FUNC4(igp_info->info_6.ulBoostEngineCLock);
		pi->sys_info.boost_vid_2bit = igp_info->info_6.ulBoostVid_2bit;
		if (igp_info->info_6.EnableBoost)
			pi->sys_info.enable_boost = true;
		else
			pi->sys_info.enable_boost = false;
		FUNC5(rdev,
							     &pi->sys_info.disp_clk_voltage_mapping_table,
							     igp_info->info_6.sDISPCLK_Voltage);
		FUNC6(rdev,
							  &pi->sys_info.sclk_voltage_mapping_table,
							  igp_info->info_6.sAvail_SCLK);
		FUNC7(rdev, &pi->sys_info.vid_mapping_table,
						 igp_info->info_6.sAvail_SCLK);

	}
	return 0;
}