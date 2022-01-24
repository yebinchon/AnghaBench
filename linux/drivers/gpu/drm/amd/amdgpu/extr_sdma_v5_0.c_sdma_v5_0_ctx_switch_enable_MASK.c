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
typedef  unsigned int u32 ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_CTXSW_ENABLE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA0_CNTL ; 
 unsigned int SDMA0_PHASE0_QUANTUM__UNIT_MASK ; 
 unsigned int SDMA0_PHASE0_QUANTUM__UNIT__SHIFT ; 
 unsigned int SDMA0_PHASE0_QUANTUM__VALUE_MASK ; 
 unsigned int SDMA0_PHASE0_QUANTUM__VALUE__SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int amdgpu_sdma_phase_quantum ; 
 int /*<<< orphan*/  mmSDMA0_CNTL ; 
 int /*<<< orphan*/  mmSDMA0_PHASE0_QUANTUM ; 
 int /*<<< orphan*/  mmSDMA0_PHASE1_QUANTUM ; 
 int /*<<< orphan*/  mmSDMA0_PHASE2_QUANTUM ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev, bool enable)
{
	u32 f32_cntl, phase_quantum = 0;
	int i;

	if (amdgpu_sdma_phase_quantum) {
		unsigned value = amdgpu_sdma_phase_quantum;
		unsigned unit = 0;

		while (value > (SDMA0_PHASE0_QUANTUM__VALUE_MASK >>
				SDMA0_PHASE0_QUANTUM__VALUE__SHIFT)) {
			value = (value + 1) >> 1;
			unit++;
		}
		if (unit > (SDMA0_PHASE0_QUANTUM__UNIT_MASK >>
			    SDMA0_PHASE0_QUANTUM__UNIT__SHIFT)) {
			value = (SDMA0_PHASE0_QUANTUM__VALUE_MASK >>
				 SDMA0_PHASE0_QUANTUM__VALUE__SHIFT);
			unit = (SDMA0_PHASE0_QUANTUM__UNIT_MASK >>
				SDMA0_PHASE0_QUANTUM__UNIT__SHIFT);
			FUNC2(1,
			"clamping sdma_phase_quantum to %uK clock cycles\n",
				  value << unit);
		}
		phase_quantum =
			value << SDMA0_PHASE0_QUANTUM__VALUE__SHIFT |
			unit  << SDMA0_PHASE0_QUANTUM__UNIT__SHIFT;
	}

	for (i = 0; i < adev->sdma.num_instances; i++) {
		f32_cntl = FUNC1(FUNC4(adev, i, mmSDMA0_CNTL));
		f32_cntl = FUNC0(f32_cntl, SDMA0_CNTL,
				AUTO_CTXSW_ENABLE, enable ? 1 : 0);
		if (enable && amdgpu_sdma_phase_quantum) {
			FUNC3(FUNC4(adev, i, mmSDMA0_PHASE0_QUANTUM),
			       phase_quantum);
			FUNC3(FUNC4(adev, i, mmSDMA0_PHASE1_QUANTUM),
			       phase_quantum);
			FUNC3(FUNC4(adev, i, mmSDMA0_PHASE2_QUANTUM),
			       phase_quantum);
		}
		FUNC3(FUNC4(adev, i, mmSDMA0_CNTL), f32_cntl);
	}

}