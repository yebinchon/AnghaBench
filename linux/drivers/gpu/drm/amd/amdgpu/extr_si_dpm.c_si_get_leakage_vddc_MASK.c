#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ count; TYPE_1__* entries; } ;
struct si_power_info {TYPE_2__ leakage_voltage; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ leakage_index; scalar_t__ voltage; } ;

/* Variables and functions */
 scalar_t__ SISLANDS_LEAKAGE_INDEX0 ; 
 int SISLANDS_MAX_LEAKAGE_COUNT ; 
 int FUNC0 (struct amdgpu_device*,scalar_t__*,scalar_t__) ; 
 struct si_power_info* FUNC1 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	struct si_power_info *si_pi = FUNC1(adev);
	u16 vddc, count = 0;
	int i, ret;

	for (i = 0; i < SISLANDS_MAX_LEAKAGE_COUNT; i++) {
		ret = FUNC0(adev, &vddc, SISLANDS_LEAKAGE_INDEX0 + i);

		if (!ret && (vddc > 0) && (vddc != (SISLANDS_LEAKAGE_INDEX0 + i))) {
			si_pi->leakage_voltage.entries[count].voltage = vddc;
			si_pi->leakage_voltage.entries[count].leakage_index =
				SISLANDS_LEAKAGE_INDEX0 + i;
			count++;
		}
	}
	si_pi->leakage_voltage.count = count;
}