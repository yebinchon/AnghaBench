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
struct TYPE_2__ {scalar_t__ load_type; } ;
struct amdgpu_device {int /*<<< orphan*/  smu; TYPE_1__ firmware; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_DIRECT ; 
 int /*<<< orphan*/  amdgpu_emu_mode ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(void *handle)
{
	int r;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	r = FUNC3(adev);
	if (r)
		return r;

	if (!amdgpu_emu_mode)
		FUNC4(adev);

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT) {
		/**
		 * For gfx 10, rlc firmware loading relies on smu firmware is
		 * loaded firstly, so in direct type, it has to load smc ucode
		 * here before rlc.
		 */
		r = FUNC10(&adev->smu);
		if (r)
			return r;

		r = FUNC9(&adev->smu);
		if (r) {
			FUNC8("SMC firmware status is not correct\n");
			return r;
		}
	}

	/* if GRBM CAM not remapped, set up the remapping */
	if (!FUNC0(adev))
		FUNC6(adev);

	FUNC1(adev);

	r = FUNC5(adev);
	if (r)
		return r;

	/*
	 * init golden registers and rlc resume may override some registers,
	 * reconfig them here
	 */
	FUNC7(adev);

	r = FUNC2(adev);
	if (r)
		return r;

	return r;
}