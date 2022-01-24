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
 int /*<<< orphan*/  CG_SPLL_FUNC_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FORCED_FEEDBACK_DIV_MASK ; 
 int /*<<< orphan*/  FORCE_FEEDBACK_DIV ; 
 int /*<<< orphan*/  FVTHROT_FBDIV_REG1 ; 
 int /*<<< orphan*/  FVTHROT_FBDIV_REG2 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPLL_FB_DIV_MASK ; 
 int SPLL_FB_DIV_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  STARTING_FEEDBACK_DIV_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	u32 fbdiv = (FUNC1(CG_SPLL_FUNC_CNTL) & SPLL_FB_DIV_MASK) >> SPLL_FB_DIV_SHIFT;

	FUNC3(FVTHROT_FBDIV_REG1, FUNC2(fbdiv),
		 ~STARTING_FEEDBACK_DIV_MASK);

	FUNC3(FVTHROT_FBDIV_REG2, FUNC0(fbdiv),
		 ~FORCED_FEEDBACK_DIV_MASK);

	FUNC3(FVTHROT_FBDIV_REG1, FORCE_FEEDBACK_DIV, ~FORCE_FEEDBACK_DIV);
}