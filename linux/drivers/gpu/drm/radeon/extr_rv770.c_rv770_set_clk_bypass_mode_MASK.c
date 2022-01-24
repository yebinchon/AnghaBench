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
typedef  scalar_t__ u32 ;
struct radeon_device {int flags; scalar_t__ usec_timeout; scalar_t__ family; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SPLL_FUNC_CNTL_2 ; 
 int /*<<< orphan*/  CG_SPLL_STATUS ; 
 scalar_t__ CHIP_RV710 ; 
 scalar_t__ CHIP_RV730 ; 
 int /*<<< orphan*/  MPLL_CNTL_MODE ; 
 scalar_t__ MPLL_MCLK_SEL ; 
 int RADEON_IS_IGP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RV730_MPLL_MCLK_SEL ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ SCLK_MUX_SEL_MASK ; 
 scalar_t__ SCLK_MUX_UPDATE ; 
 int SPLL_CHG_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct radeon_device *rdev)
{
	u32 tmp, i;

	if (rdev->flags & RADEON_IS_IGP)
		return;

	tmp = FUNC0(CG_SPLL_FUNC_CNTL_2);
	tmp &= SCLK_MUX_SEL_MASK;
	tmp |= FUNC1(1) | SCLK_MUX_UPDATE;
	FUNC2(CG_SPLL_FUNC_CNTL_2, tmp);

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(CG_SPLL_STATUS) & SPLL_CHG_STATUS)
			break;
		FUNC3(1);
	}

	tmp &= ~SCLK_MUX_UPDATE;
	FUNC2(CG_SPLL_FUNC_CNTL_2, tmp);

	tmp = FUNC0(MPLL_CNTL_MODE);
	if ((rdev->family == CHIP_RV710) || (rdev->family == CHIP_RV730))
		tmp &= ~RV730_MPLL_MCLK_SEL;
	else
		tmp &= ~MPLL_MCLK_SEL;
	FUNC2(MPLL_CNTL_MODE, tmp);
}