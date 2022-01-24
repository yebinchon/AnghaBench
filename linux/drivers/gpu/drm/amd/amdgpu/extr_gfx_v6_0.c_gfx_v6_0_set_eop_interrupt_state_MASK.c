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
#define  AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP 130 
#define  AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE1_EOP 129 
#define  AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP 128 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev,
					    struct amdgpu_irq_src *src,
					    unsigned type,
					    enum amdgpu_interrupt_state state)
{
	switch (type) {
	case AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP:
		FUNC1(adev, state);
		break;
	case AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP:
		FUNC0(adev, 0, state);
		break;
	case AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE1_EOP:
		FUNC0(adev, 1, state);
		break;
	default:
		break;
	}
	return 0;
}