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
struct amdgpu_display_manager {int /*<<< orphan*/  dc; int /*<<< orphan*/  cached_state; } ;
struct amdgpu_device {int /*<<< orphan*/  ddev; struct amdgpu_display_manager dm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_ACPI_CM_POWER_STATE_D3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	struct amdgpu_device *adev = handle;
	struct amdgpu_display_manager *dm = &adev->dm;
	int ret = 0;

	FUNC0(adev->dm.cached_state);
	adev->dm.cached_state = FUNC3(adev->ddev);

	FUNC4(adev->ddev, true);

	FUNC1(adev);


	FUNC2(dm->dc, DC_ACPI_CM_POWER_STATE_D3);

	return ret;
}