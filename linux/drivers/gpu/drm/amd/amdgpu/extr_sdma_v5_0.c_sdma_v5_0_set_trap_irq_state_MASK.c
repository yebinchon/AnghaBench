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
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;

/* Variables and functions */
 int AMDGPU_IRQ_STATE_ENABLE ; 
 unsigned int AMDGPU_SDMA_IRQ_INSTANCE0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA0_CNTL ; 
 int /*<<< orphan*/  TRAP_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSDMA0_CNTL ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev,
					struct amdgpu_irq_src *source,
					unsigned type,
					enum amdgpu_interrupt_state state)
{
	u32 sdma_cntl;

	u32 reg_offset = (type == AMDGPU_SDMA_IRQ_INSTANCE0) ?
		FUNC3(adev, 0, mmSDMA0_CNTL) :
		FUNC3(adev, 1, mmSDMA0_CNTL);

	sdma_cntl = FUNC1(reg_offset);
	sdma_cntl = FUNC0(sdma_cntl, SDMA0_CNTL, TRAP_ENABLE,
		       state == AMDGPU_IRQ_STATE_ENABLE ? 1 : 0);
	FUNC2(reg_offset, sdma_cntl);

	return 0;
}