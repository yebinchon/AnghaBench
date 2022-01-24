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
struct pp_hwmgr {int /*<<< orphan*/  device; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AvfsPSMResetConfig_vega10 ; 
 int /*<<< orphan*/  PHM_PlatformCaps_GCEDC ; 
 int /*<<< orphan*/  PHM_PlatformCaps_PSM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmGC_EDC_CTRL ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pp_hwmgr *hwmgr)
{
	struct amdgpu_device *adev = hwmgr->adev;
	uint32_t data;

	FUNC1(adev);

	FUNC4(hwmgr, false);

	FUNC2(adev);

	if (FUNC0(PHM_PlatformCaps_GCEDC)) {
		data = 0x00000000;
		FUNC3(hwmgr->device, mmGC_EDC_CTRL, data);
	}

	if (FUNC0(PHM_PlatformCaps_PSM))
		FUNC5(hwmgr,  AvfsPSMResetConfig_vega10);

	return 0;
}