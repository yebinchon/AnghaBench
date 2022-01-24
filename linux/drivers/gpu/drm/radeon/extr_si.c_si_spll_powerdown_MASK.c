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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SPLL_FUNC_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPLL_CNTL_MODE ; 
 int /*<<< orphan*/  SPLL_RESET ; 
 int /*<<< orphan*/  SPLL_SLEEP ; 
 int /*<<< orphan*/  SPLL_SW_DIR_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	u32 tmp;

	tmp = FUNC0(SPLL_CNTL_MODE);
	tmp |= SPLL_SW_DIR_CONTROL;
	FUNC1(SPLL_CNTL_MODE, tmp);

	tmp = FUNC0(CG_SPLL_FUNC_CNTL);
	tmp |= SPLL_RESET;
	FUNC1(CG_SPLL_FUNC_CNTL, tmp);

	tmp = FUNC0(CG_SPLL_FUNC_CNTL);
	tmp |= SPLL_SLEEP;
	FUNC1(CG_SPLL_FUNC_CNTL, tmp);

	tmp = FUNC0(SPLL_CNTL_MODE);
	tmp &= ~SPLL_SW_DIR_CONTROL;
	FUNC1(SPLL_CNTL_MODE, tmp);
}