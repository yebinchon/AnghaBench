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
#define  AMDGPU_CRTC_IRQ_VBLANK1 139 
#define  AMDGPU_CRTC_IRQ_VBLANK2 138 
#define  AMDGPU_CRTC_IRQ_VBLANK3 137 
#define  AMDGPU_CRTC_IRQ_VBLANK4 136 
#define  AMDGPU_CRTC_IRQ_VBLANK5 135 
#define  AMDGPU_CRTC_IRQ_VBLANK6 134 
#define  AMDGPU_CRTC_IRQ_VLINE1 133 
#define  AMDGPU_CRTC_IRQ_VLINE2 132 
#define  AMDGPU_CRTC_IRQ_VLINE3 131 
#define  AMDGPU_CRTC_IRQ_VLINE4 130 
#define  AMDGPU_CRTC_IRQ_VLINE5 129 
#define  AMDGPU_CRTC_IRQ_VLINE6 128 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev,
					struct amdgpu_irq_src *source,
					unsigned type,
					enum amdgpu_interrupt_state state)
{
	switch (type) {
	case AMDGPU_CRTC_IRQ_VBLANK1:
		FUNC0(adev, 0, state);
		break;
	case AMDGPU_CRTC_IRQ_VBLANK2:
		FUNC0(adev, 1, state);
		break;
	case AMDGPU_CRTC_IRQ_VBLANK3:
		FUNC0(adev, 2, state);
		break;
	case AMDGPU_CRTC_IRQ_VBLANK4:
		FUNC0(adev, 3, state);
		break;
	case AMDGPU_CRTC_IRQ_VBLANK5:
		FUNC0(adev, 4, state);
		break;
	case AMDGPU_CRTC_IRQ_VBLANK6:
		FUNC0(adev, 5, state);
		break;
	case AMDGPU_CRTC_IRQ_VLINE1:
		FUNC1(adev, 0, state);
		break;
	case AMDGPU_CRTC_IRQ_VLINE2:
		FUNC1(adev, 1, state);
		break;
	case AMDGPU_CRTC_IRQ_VLINE3:
		FUNC1(adev, 2, state);
		break;
	case AMDGPU_CRTC_IRQ_VLINE4:
		FUNC1(adev, 3, state);
		break;
	case AMDGPU_CRTC_IRQ_VLINE5:
		FUNC1(adev, 4, state);
		break;
	 case AMDGPU_CRTC_IRQ_VLINE6:
		FUNC1(adev, 5, state);
		break;
	default:
		break;
	}
	return 0;
}