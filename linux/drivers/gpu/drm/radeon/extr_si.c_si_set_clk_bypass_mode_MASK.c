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
struct radeon_device {scalar_t__ usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SPLL_FUNC_CNTL ; 
 int /*<<< orphan*/  CG_SPLL_FUNC_CNTL_2 ; 
 int /*<<< orphan*/  MPLL_CNTL_MODE ; 
 scalar_t__ MPLL_MCLK_SEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCLK_MUX_UPDATE ; 
 scalar_t__ SPLL_BYPASS_EN ; 
 int SPLL_CHG_STATUS ; 
 scalar_t__ SPLL_CTLREQ_CHG ; 
 int /*<<< orphan*/  SPLL_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	u32 tmp, i;

	tmp = FUNC0(CG_SPLL_FUNC_CNTL);
	tmp |= SPLL_BYPASS_EN;
	FUNC1(CG_SPLL_FUNC_CNTL, tmp);

	tmp = FUNC0(CG_SPLL_FUNC_CNTL_2);
	tmp |= SPLL_CTLREQ_CHG;
	FUNC1(CG_SPLL_FUNC_CNTL_2, tmp);

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(SPLL_STATUS) & SPLL_CHG_STATUS)
			break;
		FUNC2(1);
	}

	tmp = FUNC0(CG_SPLL_FUNC_CNTL_2);
	tmp &= ~(SPLL_CTLREQ_CHG | SCLK_MUX_UPDATE);
	FUNC1(CG_SPLL_FUNC_CNTL_2, tmp);

	tmp = FUNC0(MPLL_CNTL_MODE);
	tmp &= ~MPLL_MCLK_SEL;
	FUNC1(MPLL_CNTL_MODE, tmp);
}