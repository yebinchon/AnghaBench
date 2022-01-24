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
struct TYPE_2__ {int /*<<< orphan*/  load_type; } ;
struct amdgpu_device {TYPE_1__ firmware; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  amdgpu_fw_load_type ; 
 int amdgpu_gart_size ; 
 int amdgpu_gtt_size ; 
 int amdgpu_sched_jobs ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int amdgpu_vm_fragment_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	int ret = 0;

	if (amdgpu_sched_jobs < 4) {
		FUNC6(adev->dev, "sched jobs (%d) must be at least 4\n",
			 amdgpu_sched_jobs);
		amdgpu_sched_jobs = 4;
	} else if (!FUNC7(amdgpu_sched_jobs)){
		FUNC6(adev->dev, "sched jobs (%d) must be a power of 2\n",
			 amdgpu_sched_jobs);
		amdgpu_sched_jobs = FUNC8(amdgpu_sched_jobs);
	}

	if (amdgpu_gart_size != -1 && amdgpu_gart_size < 32) {
		/* gart size must be greater or equal to 32M */
		FUNC6(adev->dev, "gart size (%d) too small\n",
			 amdgpu_gart_size);
		amdgpu_gart_size = -1;
	}

	if (amdgpu_gtt_size != -1 && amdgpu_gtt_size < 32) {
		/* gtt size must be greater or equal to 32M */
		FUNC6(adev->dev, "gtt size (%d) too small\n",
				 amdgpu_gtt_size);
		amdgpu_gtt_size = -1;
	}

	/* valid range is between 4 and 9 inclusive */
	if (amdgpu_vm_fragment_size != -1 &&
	    (amdgpu_vm_fragment_size > 9 || amdgpu_vm_fragment_size < 4)) {
		FUNC6(adev->dev, "valid range is between 4 and 9\n");
		amdgpu_vm_fragment_size = -1;
	}

	FUNC1(adev);

	FUNC2(adev);

	FUNC0(adev);

	ret = FUNC3(adev);
	if (ret) {
		FUNC5(adev->dev, "invalid lockup_timeout parameter syntax\n");
		return ret;
	}

	adev->firmware.load_type = FUNC4(adev, amdgpu_fw_load_type);

	return ret;
}