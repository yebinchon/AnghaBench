#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct radeon_ps {int dummy; } ;
struct radeon_clock_and_voltage_limits {scalar_t__ mclk; scalar_t__ sclk; scalar_t__ vddc; scalar_t__ vddci; } ;
struct TYPE_7__ {scalar_t__ min_vddc_for_pcie_gen2; struct radeon_clock_and_voltage_limits max_clock_voltage_on_dc; int /*<<< orphan*/  vddc_dependency_on_dispclk; int /*<<< orphan*/  vddc_dependency_on_mclk; int /*<<< orphan*/  vddci_dependency_on_mclk; int /*<<< orphan*/  vddc_dependency_on_sclk; struct radeon_clock_and_voltage_limits max_clock_voltage_on_ac; } ;
struct TYPE_8__ {int new_active_crtc_count; int ac_power; TYPE_2__ dyn_state; } ;
struct TYPE_9__ {TYPE_3__ dpm; } ;
struct TYPE_6__ {scalar_t__ current_dispclk; } ;
struct radeon_device {TYPE_4__ pm; TYPE_1__ clock; } ;
struct ni_ps {int performance_level_count; int dc_compatible; TYPE_5__* performance_levels; } ;
struct TYPE_10__ {scalar_t__ mclk; scalar_t__ sclk; scalar_t__ vddc; scalar_t__ vddci; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_PPLIB_R600_FLAGS_PCIEGEN2 ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,struct radeon_clock_and_voltage_limits*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct radeon_device*) ; 
 struct ni_ps* FUNC5 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev,
					struct radeon_ps *rps)
{
	struct ni_ps *ps = FUNC5(rps);
	struct radeon_clock_and_voltage_limits *max_limits;
	bool disable_mclk_switching;
	u32 mclk;
	u16 vddci;
	int i;

	if ((rdev->pm.dpm.new_active_crtc_count > 1) ||
	    FUNC4(rdev))
		disable_mclk_switching = true;
	else
		disable_mclk_switching = false;

	if (rdev->pm.dpm.ac_power)
		max_limits = &rdev->pm.dpm.dyn_state.max_clock_voltage_on_ac;
	else
		max_limits = &rdev->pm.dpm.dyn_state.max_clock_voltage_on_dc;

	if (rdev->pm.dpm.ac_power == false) {
		for (i = 0; i < ps->performance_level_count; i++) {
			if (ps->performance_levels[i].mclk > max_limits->mclk)
				ps->performance_levels[i].mclk = max_limits->mclk;
			if (ps->performance_levels[i].sclk > max_limits->sclk)
				ps->performance_levels[i].sclk = max_limits->sclk;
			if (ps->performance_levels[i].vddc > max_limits->vddc)
				ps->performance_levels[i].vddc = max_limits->vddc;
			if (ps->performance_levels[i].vddci > max_limits->vddci)
				ps->performance_levels[i].vddci = max_limits->vddci;
		}
	}

	/* XXX validate the min clocks required for display */

	/* adjust low state */
	if (disable_mclk_switching) {
		ps->performance_levels[0].mclk =
			ps->performance_levels[ps->performance_level_count - 1].mclk;
		ps->performance_levels[0].vddci =
			ps->performance_levels[ps->performance_level_count - 1].vddci;
	}

	FUNC3(rdev, max_limits->sclk, max_limits->mclk,
				  &ps->performance_levels[0].sclk,
				  &ps->performance_levels[0].mclk);

	for (i = 1; i < ps->performance_level_count; i++) {
		if (ps->performance_levels[i].sclk < ps->performance_levels[i - 1].sclk)
			ps->performance_levels[i].sclk = ps->performance_levels[i - 1].sclk;
		if (ps->performance_levels[i].vddc < ps->performance_levels[i - 1].vddc)
			ps->performance_levels[i].vddc = ps->performance_levels[i - 1].vddc;
	}

	/* adjust remaining states */
	if (disable_mclk_switching) {
		mclk = ps->performance_levels[0].mclk;
		vddci = ps->performance_levels[0].vddci;
		for (i = 1; i < ps->performance_level_count; i++) {
			if (mclk < ps->performance_levels[i].mclk)
				mclk = ps->performance_levels[i].mclk;
			if (vddci < ps->performance_levels[i].vddci)
				vddci = ps->performance_levels[i].vddci;
		}
		for (i = 0; i < ps->performance_level_count; i++) {
			ps->performance_levels[i].mclk = mclk;
			ps->performance_levels[i].vddci = vddci;
		}
	} else {
		for (i = 1; i < ps->performance_level_count; i++) {
			if (ps->performance_levels[i].mclk < ps->performance_levels[i - 1].mclk)
				ps->performance_levels[i].mclk = ps->performance_levels[i - 1].mclk;
			if (ps->performance_levels[i].vddci < ps->performance_levels[i - 1].vddci)
				ps->performance_levels[i].vddci = ps->performance_levels[i - 1].vddci;
		}
	}

	for (i = 1; i < ps->performance_level_count; i++)
		FUNC3(rdev, max_limits->sclk, max_limits->mclk,
					  &ps->performance_levels[i].sclk,
					  &ps->performance_levels[i].mclk);

	for (i = 0; i < ps->performance_level_count; i++)
		FUNC0(rdev, max_limits,
					      &ps->performance_levels[i]);

	for (i = 0; i < ps->performance_level_count; i++) {
		FUNC2(&rdev->pm.dpm.dyn_state.vddc_dependency_on_sclk,
						   ps->performance_levels[i].sclk,
						   max_limits->vddc,  &ps->performance_levels[i].vddc);
		FUNC2(&rdev->pm.dpm.dyn_state.vddci_dependency_on_mclk,
						   ps->performance_levels[i].mclk,
						   max_limits->vddci, &ps->performance_levels[i].vddci);
		FUNC2(&rdev->pm.dpm.dyn_state.vddc_dependency_on_mclk,
						   ps->performance_levels[i].mclk,
						   max_limits->vddc,  &ps->performance_levels[i].vddc);
		FUNC2(&rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk,
						   rdev->clock.current_dispclk,
						   max_limits->vddc,  &ps->performance_levels[i].vddc);
	}

	for (i = 0; i < ps->performance_level_count; i++) {
		FUNC1(rdev,
					      max_limits->vddc, max_limits->vddci,
					      &ps->performance_levels[i].vddc,
					      &ps->performance_levels[i].vddci);
	}

	ps->dc_compatible = true;
	for (i = 0; i < ps->performance_level_count; i++) {
		if (ps->performance_levels[i].vddc > rdev->pm.dpm.dyn_state.max_clock_voltage_on_dc.vddc)
			ps->dc_compatible = false;

		if (ps->performance_levels[i].vddc < rdev->pm.dpm.dyn_state.min_vddc_for_pcie_gen2)
			ps->performance_levels[i].flags &= ~ATOM_PPLIB_R600_FLAGS_PCIEGEN2;
	}
}