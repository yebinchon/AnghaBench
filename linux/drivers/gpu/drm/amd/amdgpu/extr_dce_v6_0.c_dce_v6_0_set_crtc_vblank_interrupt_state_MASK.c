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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef  enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;

/* Variables and functions */
#define  AMDGPU_IRQ_STATE_DISABLE 129 
#define  AMDGPU_IRQ_STATE_ENABLE 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ SI_CRTC0_REGISTER_OFFSET ; 
 scalar_t__ SI_CRTC1_REGISTER_OFFSET ; 
 scalar_t__ SI_CRTC2_REGISTER_OFFSET ; 
 scalar_t__ SI_CRTC3_REGISTER_OFFSET ; 
 scalar_t__ SI_CRTC4_REGISTER_OFFSET ; 
 scalar_t__ SI_CRTC5_REGISTER_OFFSET ; 
 scalar_t__ VBLANK_INT_MASK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ mmINT_MASK ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
						     int crtc,
						     enum amdgpu_interrupt_state state)
{
	u32 reg_block, interrupt_mask;

	if (crtc >= adev->mode_info.num_crtc) {
		FUNC0("invalid crtc %d\n", crtc);
		return;
	}

	switch (crtc) {
	case 0:
		reg_block = SI_CRTC0_REGISTER_OFFSET;
		break;
	case 1:
		reg_block = SI_CRTC1_REGISTER_OFFSET;
		break;
	case 2:
		reg_block = SI_CRTC2_REGISTER_OFFSET;
		break;
	case 3:
		reg_block = SI_CRTC3_REGISTER_OFFSET;
		break;
	case 4:
		reg_block = SI_CRTC4_REGISTER_OFFSET;
		break;
	case 5:
		reg_block = SI_CRTC5_REGISTER_OFFSET;
		break;
	default:
		FUNC0("invalid crtc %d\n", crtc);
		return;
	}

	switch (state) {
	case AMDGPU_IRQ_STATE_DISABLE:
		interrupt_mask = FUNC1(mmINT_MASK + reg_block);
		interrupt_mask &= ~VBLANK_INT_MASK;
		FUNC2(mmINT_MASK + reg_block, interrupt_mask);
		break;
	case AMDGPU_IRQ_STATE_ENABLE:
		interrupt_mask = FUNC1(mmINT_MASK + reg_block);
		interrupt_mask |= VBLANK_INT_MASK;
		FUNC2(mmINT_MASK + reg_block, interrupt_mask);
		break;
	default:
		break;
	}
}