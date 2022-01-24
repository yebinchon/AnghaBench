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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ load_type; } ;
struct amdgpu_device {int usec_timeout; TYPE_1__ firmware; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO ; 
 int /*<<< orphan*/  BOOTLOAD_COMPLETE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GC ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RLC_RLCS_BOOTLOAD_STATUS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmCP_STAT ; 
 int /*<<< orphan*/  mmRLC_RLCS_BOOTLOAD_STATUS ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev)
{
	uint32_t cp_status;
	uint32_t bootload_status;
	int i, r;

	for (i = 0; i < adev->usec_timeout; i++) {
		cp_status = FUNC1(GC, 0, mmCP_STAT);
		bootload_status = FUNC1(GC, 0, mmRLC_RLCS_BOOTLOAD_STATUS);
		if ((cp_status == 0) &&
		    (FUNC0(bootload_status,
			RLC_RLCS_BOOTLOAD_STATUS, BOOTLOAD_COMPLETE) == 1)) {
			break;
		}
		FUNC7(1);
	}

	if (i >= adev->usec_timeout) {
		FUNC2(adev->dev, "rlc autoload: gc ucode autoload timeout\n");
		return -ETIMEDOUT;
	}

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO) {
		r = FUNC4(adev);
		if (r)
			return r;

		r = FUNC3(adev);
		if (r)
			return r;

		r = FUNC6(adev);
		if (r)
			return r;

		r = FUNC5(adev);
		if (r)
			return r;
	}

	return 0;
}