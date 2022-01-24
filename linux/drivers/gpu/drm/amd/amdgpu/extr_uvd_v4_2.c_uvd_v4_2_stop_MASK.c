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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UVD_SOFT_RESET__LMI_SOFT_RESET_MASK ; 
 int UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK ; 
 int UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int mmUVD_LMI_CTRL2 ; 
 int /*<<< orphan*/  mmUVD_LMI_STATUS ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_CNTL ; 
 int /*<<< orphan*/  mmUVD_SOFT_RESET ; 
 int /*<<< orphan*/  mmUVD_STATUS ; 
 int mmUVD_VCPU_CNTL ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev)
{
	uint32_t i, j;
	uint32_t status;

	FUNC1(mmUVD_RBC_RB_CNTL, 0x11010101);

	for (i = 0; i < 10; ++i) {
		for (j = 0; j < 100; ++j) {
			status = FUNC0(mmUVD_STATUS);
			if (status & 2)
				break;
			FUNC3(1);
		}
		if (status & 2)
			break;
	}

	for (i = 0; i < 10; ++i) {
		for (j = 0; j < 100; ++j) {
			status = FUNC0(mmUVD_LMI_STATUS);
			if (status & 0xf)
				break;
			FUNC3(1);
		}
		if (status & 0xf)
			break;
	}

	/* Stall UMC and register bus before resetting VCPU */
	FUNC2(mmUVD_LMI_CTRL2, 1 << 8, ~(1 << 8));

	for (i = 0; i < 10; ++i) {
		for (j = 0; j < 100; ++j) {
			status = FUNC0(mmUVD_LMI_STATUS);
			if (status & 0x240)
				break;
			FUNC3(1);
		}
		if (status & 0x240)
			break;
	}

	FUNC2(0x3D49, 0, ~(1 << 2));

	FUNC2(mmUVD_VCPU_CNTL, 0, ~(1 << 9));

	/* put LMI, VCPU, RBC etc... into reset */
	FUNC1(mmUVD_SOFT_RESET, UVD_SOFT_RESET__LMI_SOFT_RESET_MASK |
		UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK |
		UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK);

	FUNC1(mmUVD_STATUS, 0);

	FUNC4(adev, false);
}