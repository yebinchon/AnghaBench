#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_11__ {TYPE_2__* entries; } ;
struct TYPE_12__ {TYPE_3__ vddc_dependency_on_sclk; } ;
struct TYPE_13__ {scalar_t__ backbias_response_time; TYPE_4__ dyn_state; } ;
struct TYPE_14__ {TYPE_5__ dpm; } ;
struct radeon_device {TYPE_6__ pm; } ;
struct TYPE_9__ {int supported; } ;
struct ci_power_info {scalar_t__ voltage_control; scalar_t__ vddc_phase_shed_control; TYPE_1__ ulv; } ;
struct TYPE_15__ {int VddcPhase; scalar_t__ VddcOffset; void* CcPwrDynRm1; void* CcPwrDynRm; scalar_t__ VddcOffsetVid; } ;
struct TYPE_10__ {scalar_t__ v; } ;
typedef  TYPE_7__ SMU7_Discrete_Ulv ;

/* Variables and functions */
 scalar_t__ CISLANDS_VOLTAGE_CONTROL_BY_SVID2 ; 
 scalar_t__ VOLTAGE_VID_OFFSET_SCALE1 ; 
 scalar_t__ VOLTAGE_VID_OFFSET_SCALE2 ; 
 struct ci_power_info* FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct radeon_device *rdev,
				 SMU7_Discrete_Ulv *state)
{
	struct ci_power_info *pi = FUNC0(rdev);
	u16 ulv_voltage = rdev->pm.dpm.backbias_response_time;

	state->CcPwrDynRm = 0;
	state->CcPwrDynRm1 = 0;

	if (ulv_voltage == 0) {
		pi->ulv.supported = false;
		return 0;
	}

	if (pi->voltage_control != CISLANDS_VOLTAGE_CONTROL_BY_SVID2) {
		if (ulv_voltage > rdev->pm.dpm.dyn_state.vddc_dependency_on_sclk.entries[0].v)
			state->VddcOffset = 0;
		else
			state->VddcOffset =
				rdev->pm.dpm.dyn_state.vddc_dependency_on_sclk.entries[0].v - ulv_voltage;
	} else {
		if (ulv_voltage > rdev->pm.dpm.dyn_state.vddc_dependency_on_sclk.entries[0].v)
			state->VddcOffsetVid = 0;
		else
			state->VddcOffsetVid = (u8)
				((rdev->pm.dpm.dyn_state.vddc_dependency_on_sclk.entries[0].v - ulv_voltage) *
				 VOLTAGE_VID_OFFSET_SCALE2 / VOLTAGE_VID_OFFSET_SCALE1);
	}
	state->VddcPhase = pi->vddc_phase_shed_control ? 0 : 1;

	state->CcPwrDynRm = FUNC2(state->CcPwrDynRm);
	state->CcPwrDynRm1 = FUNC2(state->CcPwrDynRm1);
	state->VddcOffset = FUNC1(state->VddcOffset);

	return 0;
}