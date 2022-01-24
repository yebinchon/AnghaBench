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
typedef  int u32 ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REGS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UVD_CGC_CTRL2__DYN_OCLK_RAMP_EN_MASK ; 
 int UVD_CGC_CTRL2__DYN_RCLK_RAMP_EN_MASK ; 
 int UVD_CGC_CTRL2__GATER_DIV_ID__SHIFT ; 
 int UVD_CGC_CTRL__CLK_GATE_DLY_TIMER_MASK ; 
 int UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT ; 
 int UVD_CGC_CTRL__CLK_OFF_DELAY_MASK ; 
 int UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT ; 
 int UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK ; 
 int /*<<< orphan*/  UVD_CGC_GATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ixUVD_CGC_CTRL2 ; 
 int /*<<< orphan*/  mmUVD_CGC_CTRL ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev,
			     bool sw_mode)
{
	u32 tmp, tmp2;

	FUNC2(UVD_CGC_GATE, REGS, 0);

	tmp = FUNC0(mmUVD_CGC_CTRL);
	tmp &= ~(UVD_CGC_CTRL__CLK_OFF_DELAY_MASK | UVD_CGC_CTRL__CLK_GATE_DLY_TIMER_MASK);
	tmp |= UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK |
		(1 << UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT) |
		(4 << UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT);

	if (sw_mode) {
		tmp &= ~0x7ffff800;
		tmp2 = UVD_CGC_CTRL2__DYN_OCLK_RAMP_EN_MASK |
			UVD_CGC_CTRL2__DYN_RCLK_RAMP_EN_MASK |
			(7 << UVD_CGC_CTRL2__GATER_DIV_ID__SHIFT);
	} else {
		tmp |= 0x7ffff800;
		tmp2 = 0;
	}

	FUNC1(mmUVD_CGC_CTRL, tmp);
	FUNC3(ixUVD_CGC_CTRL2, tmp2);
}