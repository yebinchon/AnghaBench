#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int platform_caps; } ;
struct TYPE_6__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_8__ {size_t count; scalar_t__* leakage_id; scalar_t__* actual_voltage; } ;
struct TYPE_7__ {size_t count; scalar_t__* leakage_id; scalar_t__* actual_voltage; } ;
struct ci_power_info {TYPE_4__ vddci_leakage; TYPE_3__ vddc_leakage; } ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_EVV ; 
 scalar_t__ ATOM_VIRTUAL_VOLTAGE_ID0 ; 
 int CISLANDS_MAX_LEAKAGE_COUNT ; 
 struct ci_power_info* FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct radeon_device*,scalar_t__*,scalar_t__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct radeon_device*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC0(rdev);
	u16 leakage_id, virtual_voltage_id;
	u16 vddc, vddci;
	int i;

	pi->vddc_leakage.count = 0;
	pi->vddci_leakage.count = 0;

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_EVV) {
		for (i = 0; i < CISLANDS_MAX_LEAKAGE_COUNT; i++) {
			virtual_voltage_id = ATOM_VIRTUAL_VOLTAGE_ID0 + i;
			if (FUNC3(rdev, virtual_voltage_id, &vddc) != 0)
				continue;
			if (vddc != 0 && vddc != virtual_voltage_id) {
				pi->vddc_leakage.actual_voltage[pi->vddc_leakage.count] = vddc;
				pi->vddc_leakage.leakage_id[pi->vddc_leakage.count] = virtual_voltage_id;
				pi->vddc_leakage.count++;
			}
		}
	} else if (FUNC1(rdev, &leakage_id) == 0) {
		for (i = 0; i < CISLANDS_MAX_LEAKAGE_COUNT; i++) {
			virtual_voltage_id = ATOM_VIRTUAL_VOLTAGE_ID0 + i;
			if (FUNC2(rdev, &vddc, &vddci,
										 virtual_voltage_id,
										 leakage_id) == 0) {
				if (vddc != 0 && vddc != virtual_voltage_id) {
					pi->vddc_leakage.actual_voltage[pi->vddc_leakage.count] = vddc;
					pi->vddc_leakage.leakage_id[pi->vddc_leakage.count] = virtual_voltage_id;
					pi->vddc_leakage.count++;
				}
				if (vddci != 0 && vddci != virtual_voltage_id) {
					pi->vddci_leakage.actual_voltage[pi->vddci_leakage.count] = vddci;
					pi->vddci_leakage.leakage_id[pi->vddci_leakage.count] = virtual_voltage_id;
					pi->vddci_leakage.count++;
				}
			}
		}
	}
}