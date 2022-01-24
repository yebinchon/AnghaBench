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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ETIMEDOUT ; 
 int FUNC1 (unsigned int) ; 
 int UPLL_CTLACK2_MASK ; 
 int UPLL_CTLACK_MASK ; 
 int /*<<< orphan*/  UPLL_CTLREQ_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct radeon_device *rdev,
				unsigned cg_upll_func_cntl)
{
	unsigned i;

	/* make sure UPLL_CTLREQ is deasserted */
	FUNC2(cg_upll_func_cntl, 0, ~UPLL_CTLREQ_MASK);

	FUNC3(10);

	/* assert UPLL_CTLREQ */
	FUNC2(cg_upll_func_cntl, UPLL_CTLREQ_MASK, ~UPLL_CTLREQ_MASK);

	/* wait for CTLACK and CTLACK2 to get asserted */
	for (i = 0; i < 100; ++i) {
		uint32_t mask = UPLL_CTLACK_MASK | UPLL_CTLACK2_MASK;
		if ((FUNC1(cg_upll_func_cntl) & mask) == mask)
			break;
		FUNC3(10);
	}

	/* deassert UPLL_CTLREQ */
	FUNC2(cg_upll_func_cntl, 0, ~UPLL_CTLREQ_MASK);

	if (i == 100) {
		FUNC0("Timeout setting UVD clocks!\n");
		return -ETIMEDOUT;
	}

	return 0;
}