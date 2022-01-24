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
struct smu_temperature_range {int /*<<< orphan*/  mem_emergency_max; int /*<<< orphan*/  mem_crit_max; int /*<<< orphan*/  mem_min; int /*<<< orphan*/  hotspot_emergency_max; int /*<<< orphan*/  hotspot_crit_max; int /*<<< orphan*/  hotspot_min; int /*<<< orphan*/  edge_emergency_max; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct TYPE_5__ {scalar_t__ thermal_controller_type; } ;
struct smu_context {TYPE_1__ smu_table; int /*<<< orphan*/  pm_enabled; struct amdgpu_device* adev; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_mem_emergency_temp; int /*<<< orphan*/  max_mem_crit_temp; int /*<<< orphan*/  min_mem_temp; int /*<<< orphan*/  max_hotspot_emergency_temp; int /*<<< orphan*/  max_hotspot_crit_temp; int /*<<< orphan*/  min_hotspot_temp; int /*<<< orphan*/  max_edge_emergency_temp; int /*<<< orphan*/  max_temp; int /*<<< orphan*/  min_temp; } ;
struct TYPE_7__ {TYPE_2__ thermal; } ;
struct TYPE_8__ {TYPE_3__ dpm; } ;
struct amdgpu_device {TYPE_4__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smu_temperature_range*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * smu11_thermal_policy ; 
 int FUNC1 (struct smu_context*,struct smu_temperature_range*) ; 
 int FUNC2 (struct smu_context*) ; 
 int FUNC3 (struct smu_context*) ; 
 int FUNC4 (struct smu_context*,struct smu_temperature_range) ; 

__attribute__((used)) static int FUNC5(struct smu_context *smu)
{
	int ret = 0;
	struct smu_temperature_range range;
	struct amdgpu_device *adev = smu->adev;

	if (!smu->pm_enabled)
		return ret;

	FUNC0(&range, &smu11_thermal_policy[0], sizeof(struct smu_temperature_range));

	ret = FUNC1(smu, &range);
	if (ret)
		return ret;

	if (smu->smu_table.thermal_controller_type) {
		ret = FUNC4(smu, range);
		if (ret)
			return ret;

		ret = FUNC3(smu);
		if (ret)
			return ret;

		ret = FUNC2(smu);
		if (ret)
			return ret;
	}

	adev->pm.dpm.thermal.min_temp = range.min;
	adev->pm.dpm.thermal.max_temp = range.max;
	adev->pm.dpm.thermal.max_edge_emergency_temp = range.edge_emergency_max;
	adev->pm.dpm.thermal.min_hotspot_temp = range.hotspot_min;
	adev->pm.dpm.thermal.max_hotspot_crit_temp = range.hotspot_crit_max;
	adev->pm.dpm.thermal.max_hotspot_emergency_temp = range.hotspot_emergency_max;
	adev->pm.dpm.thermal.min_mem_temp = range.mem_min;
	adev->pm.dpm.thermal.max_mem_crit_temp = range.mem_crit_max;
	adev->pm.dpm.thermal.max_mem_emergency_temp = range.mem_emergency_max;

	return ret;
}