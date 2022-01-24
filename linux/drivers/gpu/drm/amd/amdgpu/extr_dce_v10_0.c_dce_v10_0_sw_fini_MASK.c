#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mode_config_initialized; int /*<<< orphan*/  bios_hardcoded_edid; } ;
struct amdgpu_device {TYPE_1__ mode_info; int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC4(adev->mode_info.bios_hardcoded_edid);

	FUNC2(adev->ddev);

	FUNC1(adev);

	FUNC0(adev);

	FUNC3(adev->ddev);
	adev->mode_info.mode_config_initialized = false;

	return 0;
}