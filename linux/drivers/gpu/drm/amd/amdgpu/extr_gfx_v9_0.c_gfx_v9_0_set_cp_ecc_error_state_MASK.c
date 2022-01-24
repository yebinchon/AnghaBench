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
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;

/* Variables and functions */
#define  AMDGPU_IRQ_STATE_DISABLE 129 
#define  AMDGPU_IRQ_STATE_ENABLE 128 
 int /*<<< orphan*/  CP_ECC_ERROR_INT_ENABLE ; 
 int /*<<< orphan*/  CP_INT_CNTL_RING0 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
					      struct amdgpu_irq_src *source,
					      unsigned type,
					      enum amdgpu_interrupt_state state)
{
	switch (state) {
	case AMDGPU_IRQ_STATE_DISABLE:
		FUNC2(GC, 0, CP_INT_CNTL_RING0,
				CP_ECC_ERROR_INT_ENABLE, 0);
		FUNC0(1, 0);
		FUNC0(1, 1);
		FUNC0(1, 2);
		FUNC0(1, 3);
		break;

	case AMDGPU_IRQ_STATE_ENABLE:
		FUNC2(GC, 0, CP_INT_CNTL_RING0,
				CP_ECC_ERROR_INT_ENABLE, 1);
		FUNC1(1, 0);
		FUNC1(1, 1);
		FUNC1(1, 2);
		FUNC1(1, 3);
		break;
	default:
		break;
	}

	return 0;
}