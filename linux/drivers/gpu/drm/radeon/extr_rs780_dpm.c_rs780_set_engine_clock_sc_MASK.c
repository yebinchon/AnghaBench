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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FB_DIV_TIMER_VAL_MASK ; 
 int /*<<< orphan*/  FVTHROT_CNTRL_REG ; 
 int /*<<< orphan*/  FVTHROT_FBDIV_REG2 ; 
 int FUNC1 (int) ; 
 int MINIMUM_CIP_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int REFRESH_RATE_DIVISOR_MASK ; 
 int /*<<< orphan*/  RS780_FBDIVTIMERVAL_DFLT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	FUNC3(FVTHROT_FBDIV_REG2,
		 FUNC0(RS780_FBDIVTIMERVAL_DFLT),
		 ~FB_DIV_TIMER_VAL_MASK);

	FUNC3(FVTHROT_CNTRL_REG,
		 FUNC2(0) | FUNC1(0xf),
		 ~(REFRESH_RATE_DIVISOR_MASK | MINIMUM_CIP_MASK));
}