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
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDP_MEM_COHERENCY_FLUSH_CNTL ; 
 int FUNC0 (int) ; 
 int RESPONSE_TYPE_MASK ; 
 int RESPONSE_TYPE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_CONTEXT0_REQUEST_RESPONSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct radeon_device *rdev)
{
	unsigned i;
	u32 tmp;

	FUNC2(HDP_MEM_COHERENCY_FLUSH_CNTL, 0x1);

	FUNC2(VM_CONTEXT0_REQUEST_RESPONSE, FUNC0(1));
	for (i = 0; i < rdev->usec_timeout; i++) {
		/* read MC_STATUS */
		tmp = FUNC1(VM_CONTEXT0_REQUEST_RESPONSE);
		tmp = (tmp & RESPONSE_TYPE_MASK) >> RESPONSE_TYPE_SHIFT;
		if (tmp == 2) {
			FUNC3("[drm] r600 flush TLB failed\n");
			return;
		}
		if (tmp) {
			return;
		}
		FUNC4(1);
	}
}