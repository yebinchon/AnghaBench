#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_12__ {int wintime; int leakage_minimum_temperature; int l2_lta_window_size; int /*<<< orphan*/  shift_n; int /*<<< orphan*/  lts_truncate; int /*<<< orphan*/  dc_pwr_value; int /*<<< orphan*/  cac_leakage; } ;
struct si_power_info {int /*<<< orphan*/  sram_end; int /*<<< orphan*/  cac_table_start; TYPE_4__* powertune_data; TYPE_3__ dyn_powertune_data; scalar_t__ enable_dte; } ;
struct TYPE_10__ {scalar_t__ load_line_slope; int /*<<< orphan*/  cac_leakage; } ;
struct TYPE_11__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct ni_power_info {int enable_cac; int enable_power_containment; scalar_t__ driver_calculate_cac_leakage; } ;
struct TYPE_14__ {int log2_PG_LKG_SCALE; void* lkge_lut_Tstep; void* lkge_lut_T0; int /*<<< orphan*/  cac_temp; void* dc_cac; void* calculation_repeats; void* WinTime; void* R_LL; void* lkge_lut_Vstep; void* lkge_lut_V0; int /*<<< orphan*/  SHIFT_N; int /*<<< orphan*/  lts_truncate_n; void* l2numWin_TDP; } ;
struct TYPE_13__ {int /*<<< orphan*/  operating_temp; int /*<<< orphan*/  shift_n_default; int /*<<< orphan*/ * dc_cac; int /*<<< orphan*/  cac_window; } ;
typedef  TYPE_5__ PP_SIslands_CacConfig ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CAC_WINDOW_MASK ; 
 int /*<<< orphan*/  CG_CAC_CTRL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NISLANDS_DCCAC_LEVEL_0 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SI_SMC_SOFT_REGISTER_ticks_per_us ; 
 int SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES ; 
 int SMC_SISLANDS_SCALE_R ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_5__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct ni_power_info* FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct radeon_device*,int*,int*) ; 
 int FUNC11 (int,int) ; 
 struct si_power_info* FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*,TYPE_5__*,int,int,int,int,int) ; 
 int FUNC14 (struct radeon_device*,TYPE_5__*,int,int,int) ; 
 int FUNC15 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct radeon_device *rdev)
{
	struct ni_power_info *ni_pi = FUNC6(rdev);
	struct si_power_info *si_pi = FUNC12(rdev);
	PP_SIslands_CacConfig *cac_tables = NULL;
	u16 vddc_max, vddc_min, vddc_step;
	u16 t0, t_step;
	u32 load_line_slope, reg;
	int ret = 0;
	u32 ticks_per_us = FUNC7(rdev) / 100;

	if (ni_pi->enable_cac == false)
		return 0;

	cac_tables = FUNC5(sizeof(PP_SIslands_CacConfig), GFP_KERNEL);
	if (!cac_tables)
		return -ENOMEM;

	reg = FUNC1(CG_CAC_CTRL) & ~CAC_WINDOW_MASK;
	reg |= FUNC0(si_pi->powertune_data->cac_window);
	FUNC2(CG_CAC_CTRL, reg);

	si_pi->dyn_powertune_data.cac_leakage = rdev->pm.dpm.cac_leakage;
	si_pi->dyn_powertune_data.dc_pwr_value =
		si_pi->powertune_data->dc_cac[NISLANDS_DCCAC_LEVEL_0];
	si_pi->dyn_powertune_data.wintime = FUNC8(rdev);
	si_pi->dyn_powertune_data.shift_n = si_pi->powertune_data->shift_n_default;

	si_pi->dyn_powertune_data.leakage_minimum_temperature = 80 * 1000;

	ret = FUNC10(rdev, &vddc_max, &vddc_min);
	if (ret)
		goto done_free;

	vddc_step = FUNC11(vddc_max, vddc_min);
	vddc_min = vddc_max - (vddc_step * (SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES - 1));
	t_step = 4;
	t0 = 60;

	if (si_pi->enable_dte || ni_pi->driver_calculate_cac_leakage)
		ret = FUNC13(rdev, cac_tables,
						vddc_max, vddc_min, vddc_step,
						t0, t_step);
	else
		ret = FUNC14(rdev, cac_tables,
						       vddc_max, vddc_min, vddc_step);
	if (ret)
		goto done_free;

	load_line_slope = ((u32)rdev->pm.dpm.load_line_slope << SMC_SISLANDS_SCALE_R) / 100;

	cac_tables->l2numWin_TDP = FUNC3(si_pi->dyn_powertune_data.l2_lta_window_size);
	cac_tables->lts_truncate_n = si_pi->dyn_powertune_data.lts_truncate;
	cac_tables->SHIFT_N = si_pi->dyn_powertune_data.shift_n;
	cac_tables->lkge_lut_V0 = FUNC3((u32)vddc_min);
	cac_tables->lkge_lut_Vstep = FUNC3((u32)vddc_step);
	cac_tables->R_LL = FUNC3(load_line_slope);
	cac_tables->WinTime = FUNC3(si_pi->dyn_powertune_data.wintime);
	cac_tables->calculation_repeats = FUNC3(2);
	cac_tables->dc_cac = FUNC3(0);
	cac_tables->log2_PG_LKG_SCALE = 12;
	cac_tables->cac_temp = si_pi->powertune_data->operating_temp;
	cac_tables->lkge_lut_T0 = FUNC3((u32)t0);
	cac_tables->lkge_lut_Tstep = FUNC3((u32)t_step);

	ret = FUNC9(rdev, si_pi->cac_table_start, (u8 *)cac_tables,
				   sizeof(PP_SIslands_CacConfig), si_pi->sram_end);

	if (ret)
		goto done_free;

	ret = FUNC15(rdev, SI_SMC_SOFT_REGISTER_ticks_per_us, ticks_per_us);

done_free:
	if (ret) {
		ni_pi->enable_cac = false;
		ni_pi->enable_power_containment = false;
	}

	FUNC4(cac_tables);

	return 0;
}