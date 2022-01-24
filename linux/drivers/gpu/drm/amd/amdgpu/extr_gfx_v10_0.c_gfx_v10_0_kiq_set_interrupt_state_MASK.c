#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ring {int me; scalar_t__ pipe; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;
struct TYPE_4__ {TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
typedef  enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;

/* Variables and functions */
#define  AMDGPU_CP_KIQ_IRQ_DRIVER0 128 
 int AMDGPU_IRQ_STATE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CPC_INT_CNTL ; 
 int /*<<< orphan*/  CP_ME2_PIPE0_INT_CNTL ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  GENERIC2_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCPC_INT_CNTL ; 
 int /*<<< orphan*/  mmCP_ME1_PIPE0_INT_CNTL ; 
 int /*<<< orphan*/  mmCP_ME2_PIPE0_INT_CNTL ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev,
					     struct amdgpu_irq_src *src,
					     unsigned int type,
					     enum amdgpu_interrupt_state state)
{
	uint32_t tmp, target;
	struct amdgpu_ring *ring = &(adev->gfx.kiq.ring);

	if (ring->me == 1)
		target = FUNC4(GC, 0, mmCP_ME1_PIPE0_INT_CNTL);
	else
		target = FUNC4(GC, 0, mmCP_ME2_PIPE0_INT_CNTL);
	target += ring->pipe;

	switch (type) {
	case AMDGPU_CP_KIQ_IRQ_DRIVER0:
		if (state == AMDGPU_IRQ_STATE_DISABLE) {
			tmp = FUNC3(GC, 0, mmCPC_INT_CNTL);
			tmp = FUNC1(tmp, CPC_INT_CNTL,
					    GENERIC2_INT_ENABLE, 0);
			FUNC6(GC, 0, mmCPC_INT_CNTL, tmp);

			tmp = FUNC2(target);
			tmp = FUNC1(tmp, CP_ME2_PIPE0_INT_CNTL,
					    GENERIC2_INT_ENABLE, 0);
			FUNC5(target, tmp);
		} else {
			tmp = FUNC3(GC, 0, mmCPC_INT_CNTL);
			tmp = FUNC1(tmp, CPC_INT_CNTL,
					    GENERIC2_INT_ENABLE, 1);
			FUNC6(GC, 0, mmCPC_INT_CNTL, tmp);

			tmp = FUNC2(target);
			tmp = FUNC1(tmp, CP_ME2_PIPE0_INT_CNTL,
					    GENERIC2_INT_ENABLE, 1);
			FUNC5(target, tmp);
		}
		break;
	default:
		FUNC0(); /* kiq only support GENERIC2_INT now */
		break;
	}
	return 0;
}