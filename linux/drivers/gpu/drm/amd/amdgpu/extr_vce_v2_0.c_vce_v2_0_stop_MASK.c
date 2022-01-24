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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  mmVCE_LMI_CTRL2 ; 
 int /*<<< orphan*/  mmVCE_LMI_STATUS ; 
 int /*<<< orphan*/  mmVCE_SOFT_RESET ; 
 int /*<<< orphan*/  mmVCE_STATUS ; 
 int /*<<< orphan*/  mmVCE_VCPU_CNTL ; 
 scalar_t__ FUNC5 (struct amdgpu_device*) ; 
 scalar_t__ FUNC6 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	int i;
	int status;

	if (FUNC5(adev)) {
		FUNC0("vce is not idle \n");
		return 0;
	}

	if (FUNC6(adev)) {
		FUNC0("VCE is busy, Can't set clock gating");
		return 0;
	}

	/* Stall UMC and register bus before resetting VCPU */
	FUNC3(mmVCE_LMI_CTRL2, 1 << 8, ~(1 << 8));

	for (i = 0; i < 100; ++i) {
		status = FUNC1(mmVCE_LMI_STATUS);
		if (status & 0x240)
			break;
		FUNC4(1);
	}

	FUNC3(mmVCE_VCPU_CNTL, 0, ~0x80001);

	/* put LMI, VCPU, RBC etc... into reset */
	FUNC3(mmVCE_SOFT_RESET, 1, ~0x1);

	FUNC2(mmVCE_STATUS, 0);

	return 0;
}