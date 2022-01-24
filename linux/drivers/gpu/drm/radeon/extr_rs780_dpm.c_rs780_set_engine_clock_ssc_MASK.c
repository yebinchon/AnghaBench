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
 int /*<<< orphan*/  FVTHROT_FBDIV_REG1 ; 
 int /*<<< orphan*/  FVTHROT_FB_DS_REG0 ; 
 int /*<<< orphan*/  FVTHROT_FB_DS_REG1 ; 
 int /*<<< orphan*/  FVTHROT_FB_US_REG0 ; 
 int /*<<< orphan*/  FVTHROT_FB_US_REG1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MAX_FEEDBACK_STEP_MASK ; 
 int /*<<< orphan*/  RS780_FVTHROTFBDSREG0_DFLT ; 
 int /*<<< orphan*/  RS780_FVTHROTFBDSREG1_DFLT ; 
 int /*<<< orphan*/  RS780_FVTHROTFBUSREG0_DFLT ; 
 int /*<<< orphan*/  RS780_FVTHROTFBUSREG1_DFLT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	FUNC1(FVTHROT_FB_US_REG0, RS780_FVTHROTFBUSREG0_DFLT);
	FUNC1(FVTHROT_FB_US_REG1, RS780_FVTHROTFBUSREG1_DFLT);
	FUNC1(FVTHROT_FB_DS_REG0, RS780_FVTHROTFBDSREG0_DFLT);
	FUNC1(FVTHROT_FB_DS_REG1, RS780_FVTHROTFBDSREG1_DFLT);

	FUNC2(FVTHROT_FBDIV_REG1, FUNC0(1), ~MAX_FEEDBACK_STEP_MASK);
}