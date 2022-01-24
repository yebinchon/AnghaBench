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
typedef  int u32 ;
struct amdgpu_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int GRBM_STATUS__GUI_ACTIVE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGRBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void *handle)
{
	unsigned i;
	u32 tmp;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	for (i = 0; i < adev->usec_timeout; i++) {
		/* read MC_STATUS */
		tmp = FUNC0(mmGRBM_STATUS) & GRBM_STATUS__GUI_ACTIVE_MASK;

		if (!tmp)
			return 0;
		FUNC1(1);
	}
	return -ETIMEDOUT;
}