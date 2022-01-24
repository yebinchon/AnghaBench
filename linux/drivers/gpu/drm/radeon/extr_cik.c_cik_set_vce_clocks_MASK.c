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
struct atom_clock_dividers {int post_divider; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_ECLK_CNTL ; 
 int /*<<< orphan*/  CG_ECLK_STATUS ; 
 int /*<<< orphan*/  COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK ; 
 int ECLK_DIR_CNTL_EN ; 
 int ECLK_DIVIDER_MASK ; 
 int ECLK_STATUS ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int,int,struct atom_clock_dividers*) ; 

int FUNC4(struct radeon_device *rdev, u32 evclk, u32 ecclk)
{
	int r, i;
	struct atom_clock_dividers dividers;
	u32 tmp;

	r = FUNC3(rdev, COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK,
					   ecclk, false, &dividers);
	if (r)
		return r;

	for (i = 0; i < 100; i++) {
		if (FUNC0(CG_ECLK_STATUS) & ECLK_STATUS)
			break;
		FUNC2(10);
	}
	if (i == 100)
		return -ETIMEDOUT;

	tmp = FUNC0(CG_ECLK_CNTL);
	tmp &= ~(ECLK_DIR_CNTL_EN|ECLK_DIVIDER_MASK);
	tmp |= dividers.post_divider;
	FUNC1(CG_ECLK_CNTL, tmp);

	for (i = 0; i < 100; i++) {
		if (FUNC0(CG_ECLK_STATUS) & ECLK_STATUS)
			break;
		FUNC2(10);
	}
	if (i == 100)
		return -ETIMEDOUT;

	return 0;
}