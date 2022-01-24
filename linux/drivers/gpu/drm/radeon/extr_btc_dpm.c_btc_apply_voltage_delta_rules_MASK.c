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
typedef  scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ vddc_vddci_delta; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct evergreen_power_info {int /*<<< orphan*/  vddc_voltage_table; int /*<<< orphan*/  vddci_voltage_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct evergreen_power_info* FUNC1 (struct radeon_device*) ; 

void FUNC2(struct radeon_device *rdev,
				   u16 max_vddc, u16 max_vddci,
				   u16 *vddc, u16 *vddci)
{
	struct evergreen_power_info *eg_pi = FUNC1(rdev);
	u16 new_voltage;

	if ((0 == *vddc) || (0 == *vddci))
		return;

	if (*vddc > *vddci) {
		if ((*vddc - *vddci) > rdev->pm.dpm.dyn_state.vddc_vddci_delta) {
			new_voltage = FUNC0(&eg_pi->vddci_voltage_table,
						       (*vddc - rdev->pm.dpm.dyn_state.vddc_vddci_delta));
			*vddci = (new_voltage < max_vddci) ? new_voltage : max_vddci;
		}
	} else {
		if ((*vddci - *vddc) > rdev->pm.dpm.dyn_state.vddc_vddci_delta) {
			new_voltage = FUNC0(&eg_pi->vddc_voltage_table,
						       (*vddci - rdev->pm.dpm.dyn_state.vddc_vddci_delta));
			*vddc = (new_voltage < max_vddc) ? new_voltage : max_vddc;
		}
	}
}