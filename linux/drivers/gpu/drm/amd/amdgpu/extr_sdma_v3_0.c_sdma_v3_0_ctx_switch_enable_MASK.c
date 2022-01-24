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
 int /*<<< orphan*/  ATC_L1_ENABLE ; 
 int /*<<< orphan*/  AUTO_CTXSW_ENABLE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SDMA0_CNTL ; 
 unsigned int SDMA0_PHASE0_QUANTUM__UNIT_MASK ; 
 unsigned int SDMA0_PHASE0_QUANTUM__UNIT__SHIFT ; 
 unsigned int SDMA0_PHASE0_QUANTUM__VALUE_MASK ; 
 unsigned int SDMA0_PHASE0_QUANTUM__VALUE__SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int) ; 
 int amdgpu_sdma_phase_quantum ; 
 scalar_t__ mmSDMA0_CNTL ; 
 scalar_t__ mmSDMA0_PHASE0_QUANTUM ; 
 scalar_t__ mmSDMA0_PHASE1_QUANTUM ; 
 scalar_t__* sdma_offsets ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev, bool enable)
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
		f32_cntl = FUNC1(mmSDMA0_CNTL + sdma_offsets[i]);
		if (enable) {
			f32_cntl = FUNC0(f32_cntl, SDMA0_CNTL,
					AUTO_CTXSW_ENABLE, 1);
			f32_cntl = FUNC0(f32_cntl, SDMA0_CNTL,
					ATC_L1_ENABLE, 1);
			if (amdgpu_sdma_phase_quantum) {
				FUNC3(mmSDMA0_PHASE0_QUANTUM + sdma_offsets[i],
				       phase_quantum);
				FUNC3(mmSDMA0_PHASE1_QUANTUM + sdma_offsets[i],
				       phase_quantum);
			}
		} else {
			f32_cntl = FUNC0(f32_cntl, SDMA0_CNTL,
					AUTO_CTXSW_ENABLE, 0);
			f32_cntl = FUNC0(f32_cntl, SDMA0_CNTL,
					ATC_L1_ENABLE, 1);
		}

		FUNC3(mmSDMA0_CNTL + sdma_offsets[i], f32_cntl);
	}
}