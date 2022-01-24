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
struct radeon_device {int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_RLC_REQ_AND_RSP ; 
 int CG_RLC_RSP_TYPE_MASK ; 
 int CG_RLC_RSP_TYPE_SHIFT ; 
 int /*<<< orphan*/  DYN_GFX_CLK_OFF_EN ; 
 int /*<<< orphan*/  GRBM_PWR_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct radeon_device *rdev, bool enable)
{
	int i;

	if (enable) {
		FUNC2(SCLK_PWRMGT_CNTL, DYN_GFX_CLK_OFF_EN, ~DYN_GFX_CLK_OFF_EN);
	} else {
		FUNC2(SCLK_PWRMGT_CNTL, 0, ~DYN_GFX_CLK_OFF_EN);

		FUNC1(CG_RLC_REQ_AND_RSP, 0x2);

		for (i = 0; i < rdev->usec_timeout; i++) {
			if (((FUNC0(CG_RLC_REQ_AND_RSP) & CG_RLC_RSP_TYPE_MASK) >> CG_RLC_RSP_TYPE_SHIFT) == 1)
				break;
			FUNC3(1);
		}

		FUNC1(CG_RLC_REQ_AND_RSP, 0x0);

		FUNC1(GRBM_PWR_CNTL, 0x1);
		FUNC0(GRBM_PWR_CNTL);
	}
}