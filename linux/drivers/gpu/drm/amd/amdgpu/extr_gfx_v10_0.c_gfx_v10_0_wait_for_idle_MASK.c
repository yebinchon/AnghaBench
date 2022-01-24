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
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  GRBM_STATUS ; 
 int GRBM_STATUS__GUI_ACTIVE_MASK ; 
 int /*<<< orphan*/  GUI_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGRBM_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void *handle)
{
	unsigned i;
	u32 tmp;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	for (i = 0; i < adev->usec_timeout; i++) {
		/* read MC_STATUS */
		tmp = FUNC1(GC, 0, mmGRBM_STATUS) &
			GRBM_STATUS__GUI_ACTIVE_MASK;

		if (!FUNC0(tmp, GRBM_STATUS, GUI_ACTIVE))
			return 0;
		FUNC2(1);
	}
	return -ETIMEDOUT;
}