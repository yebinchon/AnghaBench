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
 int C_000100_INVALIDATE_ALL_L1_TLBS ; 
 int C_000100_INVALIDATE_L2_CACHE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000100_MC_PT0_CNTL ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct radeon_device *rdev)
{
	uint32_t tmp;

	tmp = FUNC0(R_000100_MC_PT0_CNTL);
	tmp &= C_000100_INVALIDATE_ALL_L1_TLBS & C_000100_INVALIDATE_L2_CACHE;
	FUNC3(R_000100_MC_PT0_CNTL, tmp);

	tmp = FUNC0(R_000100_MC_PT0_CNTL);
	tmp |= FUNC1(1) | FUNC2(1);
	FUNC3(R_000100_MC_PT0_CNTL, tmp);

	tmp = FUNC0(R_000100_MC_PT0_CNTL);
	tmp &= C_000100_INVALIDATE_ALL_L1_TLBS & C_000100_INVALIDATE_L2_CACHE;
	FUNC3(R_000100_MC_PT0_CNTL, tmp);
	tmp = FUNC0(R_000100_MC_PT0_CNTL);
}