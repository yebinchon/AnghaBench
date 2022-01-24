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
typedef  int u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {unsigned int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef  enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;

/* Variables and functions */
 int AMDGPU_IRQ_STATE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int EINVAL ; 
 int GRPH_INTERRUPT_CONTROL__GRPH_PFLIP_INT_MASK_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__* crtc_offsets ; 
 scalar_t__ mmGRPH_INTERRUPT_CONTROL ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
						 struct amdgpu_irq_src *src,
						 unsigned type,
						 enum amdgpu_interrupt_state state)
{
	u32 reg;

	if (type >= adev->mode_info.num_crtc) {
		FUNC0("invalid pageflip crtc %d\n", type);
		return -EINVAL;
	}

	reg = FUNC1(mmGRPH_INTERRUPT_CONTROL + crtc_offsets[type]);
	if (state == AMDGPU_IRQ_STATE_DISABLE)
		FUNC2(mmGRPH_INTERRUPT_CONTROL + crtc_offsets[type],
		       reg & ~GRPH_INTERRUPT_CONTROL__GRPH_PFLIP_INT_MASK_MASK);
	else
		FUNC2(mmGRPH_INTERRUPT_CONTROL + crtc_offsets[type],
		       reg | GRPH_INTERRUPT_CONTROL__GRPH_PFLIP_INT_MASK_MASK);

	return 0;
}