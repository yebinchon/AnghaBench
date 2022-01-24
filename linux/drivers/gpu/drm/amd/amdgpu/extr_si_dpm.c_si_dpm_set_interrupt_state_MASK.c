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
#define  AMDGPU_IRQ_STATE_DISABLE 131 
#define  AMDGPU_IRQ_STATE_ENABLE 130 
#define  AMDGPU_THERMAL_IRQ_HIGH_TO_LOW 129 
#define  AMDGPU_THERMAL_IRQ_LOW_TO_HIGH 128 
 int /*<<< orphan*/  CG_THERMAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THERM_INT_MASK_HIGH ; 
 int /*<<< orphan*/  THERM_INT_MASK_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev,
				      struct amdgpu_irq_src *source,
				      unsigned type,
				      enum amdgpu_interrupt_state state)
{
	u32 cg_thermal_int;

	switch (type) {
	case AMDGPU_THERMAL_IRQ_LOW_TO_HIGH:
		switch (state) {
		case AMDGPU_IRQ_STATE_DISABLE:
			cg_thermal_int = FUNC0(CG_THERMAL_INT);
			cg_thermal_int |= THERM_INT_MASK_HIGH;
			FUNC1(CG_THERMAL_INT, cg_thermal_int);
			break;
		case AMDGPU_IRQ_STATE_ENABLE:
			cg_thermal_int = FUNC0(CG_THERMAL_INT);
			cg_thermal_int &= ~THERM_INT_MASK_HIGH;
			FUNC1(CG_THERMAL_INT, cg_thermal_int);
			break;
		default:
			break;
		}
		break;

	case AMDGPU_THERMAL_IRQ_HIGH_TO_LOW:
		switch (state) {
		case AMDGPU_IRQ_STATE_DISABLE:
			cg_thermal_int = FUNC0(CG_THERMAL_INT);
			cg_thermal_int |= THERM_INT_MASK_LOW;
			FUNC1(CG_THERMAL_INT, cg_thermal_int);
			break;
		case AMDGPU_IRQ_STATE_ENABLE:
			cg_thermal_int = FUNC0(CG_THERMAL_INT);
			cg_thermal_int &= ~THERM_INT_MASK_LOW;
			FUNC1(CG_THERMAL_INT, cg_thermal_int);
			break;
		default:
			break;
		}
		break;

	default:
		break;
	}
	return 0;
}