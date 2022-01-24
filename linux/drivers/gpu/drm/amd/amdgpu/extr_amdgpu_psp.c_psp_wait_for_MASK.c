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
struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int usec_timeout; } ;

/* Variables and functions */
 int ETIME ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct psp_context *psp, uint32_t reg_index,
		 uint32_t reg_val, uint32_t mask, bool check_changed)
{
	uint32_t val;
	int i;
	struct amdgpu_device *adev = psp->adev;

	for (i = 0; i < adev->usec_timeout; i++) {
		val = FUNC0(reg_index);
		if (check_changed) {
			if (val != reg_val)
				return 0;
		} else {
			if ((val & mask) == reg_val)
				return 0;
		}
		FUNC1(1);
	}

	return -ETIME;
}