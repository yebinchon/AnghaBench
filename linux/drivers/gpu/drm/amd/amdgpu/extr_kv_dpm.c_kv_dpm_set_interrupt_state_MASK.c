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
 int /*<<< orphan*/  CG_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK ; 
 int /*<<< orphan*/  CG_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixCG_THERMAL_INT_CTRL ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev,
				      struct amdgpu_irq_src *src,
				      unsigned type,
				      enum amdgpu_interrupt_state state)
{
	u32 cg_thermal_int;

	switch (type) {
	case AMDGPU_THERMAL_IRQ_LOW_TO_HIGH:
		switch (state) {
		case AMDGPU_IRQ_STATE_DISABLE:
			cg_thermal_int = FUNC0(ixCG_THERMAL_INT_CTRL);
			cg_thermal_int &= ~CG_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK;
			FUNC1(ixCG_THERMAL_INT_CTRL, cg_thermal_int);
			break;
		case AMDGPU_IRQ_STATE_ENABLE:
			cg_thermal_int = FUNC0(ixCG_THERMAL_INT_CTRL);
			cg_thermal_int |= CG_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK;
			FUNC1(ixCG_THERMAL_INT_CTRL, cg_thermal_int);
			break;
		default:
			break;
		}
		break;

	case AMDGPU_THERMAL_IRQ_HIGH_TO_LOW:
		switch (state) {
		case AMDGPU_IRQ_STATE_DISABLE:
			cg_thermal_int = FUNC0(ixCG_THERMAL_INT_CTRL);
			cg_thermal_int &= ~CG_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK;
			FUNC1(ixCG_THERMAL_INT_CTRL, cg_thermal_int);
			break;
		case AMDGPU_IRQ_STATE_ENABLE:
			cg_thermal_int = FUNC0(ixCG_THERMAL_INT_CTRL);
			cg_thermal_int |= CG_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK;
			FUNC1(ixCG_THERMAL_INT_CTRL, cg_thermal_int);
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