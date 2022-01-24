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
typedef  int uint32_t ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_VCEPLL_FUNC_CNTL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ETIMEDOUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int UPLL_CTLACK2_MASK ; 
 int UPLL_CTLACK_MASK ; 
 int /*<<< orphan*/  UPLL_CTLREQ_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev)
{
	unsigned i;

	/* make sure VCEPLL_CTLREQ is deasserted */
	FUNC2(CG_VCEPLL_FUNC_CNTL, 0, ~UPLL_CTLREQ_MASK);

	FUNC3(10);

	/* assert UPLL_CTLREQ */
	FUNC2(CG_VCEPLL_FUNC_CNTL, UPLL_CTLREQ_MASK, ~UPLL_CTLREQ_MASK);

	/* wait for CTLACK and CTLACK2 to get asserted */
	for (i = 0; i < 100; ++i) {
		uint32_t mask = UPLL_CTLACK_MASK | UPLL_CTLACK2_MASK;
		if ((FUNC1(CG_VCEPLL_FUNC_CNTL) & mask) == mask)
			break;
		FUNC3(10);
	}

	/* deassert UPLL_CTLREQ */
	FUNC2(CG_VCEPLL_FUNC_CNTL, 0, ~UPLL_CTLREQ_MASK);

	if (i == 100) {
		FUNC0("Timeout setting UVD clocks!\n");
		return -ETIMEDOUT;
	}

	return 0;
}