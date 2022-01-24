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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CGC_CLK_GATER_OFF_DLY_TIMER_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int CGC_CLK_GATE_DLY_TIMER_MASK ; 
 int CGC_UENC_WAIT_AWAKE ; 
 int FUNC2 (int) ; 
 int CLOCK_OFF_DELAY_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int CLOCK_ON_DELAY_MASK ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCE_CLOCK_GATING_A ; 
 int /*<<< orphan*/  VCE_CLOCK_GATING_B ; 
 int /*<<< orphan*/  VCE_UENC_CLOCK_GATING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	u32 tmp;

	tmp = FUNC4(VCE_CLOCK_GATING_A);
	tmp &= ~(CGC_CLK_GATE_DLY_TIMER_MASK | CGC_CLK_GATER_OFF_DLY_TIMER_MASK);
	tmp |= (FUNC1(0) | FUNC0(4));
	tmp |= CGC_UENC_WAIT_AWAKE;
	FUNC5(VCE_CLOCK_GATING_A, tmp);

	tmp = FUNC4(VCE_UENC_CLOCK_GATING);
	tmp &= ~(CLOCK_ON_DELAY_MASK | CLOCK_OFF_DELAY_MASK);
	tmp |= (FUNC3(0) | FUNC2(4));
	FUNC5(VCE_UENC_CLOCK_GATING, tmp);

	tmp = FUNC4(VCE_CLOCK_GATING_B);
	tmp |= 0x10;
	tmp &= ~0x100000;
	FUNC5(VCE_CLOCK_GATING_B, tmp);
}