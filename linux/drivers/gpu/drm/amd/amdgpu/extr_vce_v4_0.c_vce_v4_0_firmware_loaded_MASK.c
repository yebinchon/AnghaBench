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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ETIMEDOUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCE ; 
 int /*<<< orphan*/  VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK ; 
 int VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  mmVCE_SOFT_RESET ; 
 int /*<<< orphan*/  mmVCE_STATUS ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	int i, j;

	for (i = 0; i < 10; ++i) {
		for (j = 0; j < 100; ++j) {
			uint32_t status =
				FUNC1(FUNC2(VCE, 0, mmVCE_STATUS));

			if (status & VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK)
				return 0;
			FUNC4(10);
		}

		FUNC0("VCE not responding, trying to reset the ECPU!!!\n");
		FUNC3(FUNC2(VCE, 0, mmVCE_SOFT_RESET),
				VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK,
				~VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK);
		FUNC4(10);
		FUNC3(FUNC2(VCE, 0, mmVCE_SOFT_RESET), 0,
				~VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK);
		FUNC4(10);

	}

	return -ETIMEDOUT;
}