#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_8__ {struct amdgpu_ring* buffer_funcs_ring; } ;
struct TYPE_7__ {int num_instances; TYPE_2__* instance; scalar_t__ has_page_queue; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_4__ mman; TYPE_3__ sdma; TYPE_1__ firmware; } ;
struct TYPE_6__ {struct amdgpu_ring page; struct amdgpu_ring ring; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 int /*<<< orphan*/  HALT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA0_CNTL ; 
 int /*<<< orphan*/  SDMA0_F32_CNTL ; 
 int /*<<< orphan*/  UTC_L1_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct amdgpu_ring*) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  mmSDMA0_CNTL ; 
 int /*<<< orphan*/  mmSDMA0_F32_CNTL ; 
 int /*<<< orphan*/  mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 
 int FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int) ; 
 int FUNC11 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC12(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	int i, r = 0;

	if (FUNC4(adev)) {
		FUNC6(adev, false);
		FUNC7(adev, false);
	} else {

		if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {
			r = FUNC9(adev);
			if (r)
				return r;
		}

		/* unhalt the MEs */
		FUNC7(adev, true);
		/* enable sdma ring preemption */
		FUNC6(adev, true);
	}

	/* start the gfx rings and rlc compute queues */
	for (i = 0; i < adev->sdma.num_instances; i++) {
		uint32_t temp;

		FUNC2(i, mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL, 0);
		FUNC8(adev, i);
		if (adev->sdma.has_page_queue)
			FUNC10(adev, i);

		/* set utc l1 enable flag always to 1 */
		temp = FUNC1(i, mmSDMA0_CNTL);
		temp = FUNC0(temp, SDMA0_CNTL, UTC_L1_ENABLE, 1);
		FUNC2(i, mmSDMA0_CNTL, temp);

		if (!FUNC4(adev)) {
			/* unhalt engine */
			temp = FUNC1(i, mmSDMA0_F32_CNTL);
			temp = FUNC0(temp, SDMA0_F32_CNTL, HALT, 0);
			FUNC2(i, mmSDMA0_F32_CNTL, temp);
		}
	}

	if (FUNC4(adev)) {
		FUNC6(adev, true);
		FUNC7(adev, true);
	} else {
		r = FUNC11(adev);
		if (r)
			return r;
	}

	for (i = 0; i < adev->sdma.num_instances; i++) {
		ring = &adev->sdma.instance[i].ring;

		r = FUNC3(ring);
		if (r)
			return r;

		if (adev->sdma.has_page_queue) {
			struct amdgpu_ring *page = &adev->sdma.instance[i].page;

			r = FUNC3(page);
			if (r)
				return r;

			if (adev->mman.buffer_funcs_ring == page)
				FUNC5(adev, true);
		}

		if (adev->mman.buffer_funcs_ring == ring)
			FUNC5(adev, true);
	}

	return r;
}