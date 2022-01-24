#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  current_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct igp_ps {scalar_t__ sclk_low; scalar_t__ sclk_high; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORCED_FEEDBACK_DIV_MASK ; 
 int /*<<< orphan*/  FORCE_FEEDBACK_DIV ; 
 int /*<<< orphan*/  FVTHROT_FBDIV_REG1 ; 
 int /*<<< orphan*/  FVTHROT_FBDIV_REG2 ; 
 int /*<<< orphan*/  GFX_MACRO_BYPASS_CNTL ; 
 int /*<<< orphan*/  SPLL_BYPASS_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STARTING_FEEDBACK_DIV_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct igp_ps* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev, u32 fb_div)
{
	struct igp_ps *current_state = FUNC3(rdev->pm.dpm.current_ps);

	if (current_state->sclk_low == current_state->sclk_high)
		return;

	FUNC2(GFX_MACRO_BYPASS_CNTL, SPLL_BYPASS_CNTL, ~SPLL_BYPASS_CNTL);

	FUNC2(FVTHROT_FBDIV_REG2, FUNC0(fb_div),
		 ~FORCED_FEEDBACK_DIV_MASK);
	FUNC2(FVTHROT_FBDIV_REG1, FUNC1(fb_div),
		 ~STARTING_FEEDBACK_DIV_MASK);
	FUNC2(FVTHROT_FBDIV_REG1, FORCE_FEEDBACK_DIV, ~FORCE_FEEDBACK_DIV);

	FUNC4(100);

	FUNC2(GFX_MACRO_BYPASS_CNTL, 0, ~SPLL_BYPASS_CNTL);
}