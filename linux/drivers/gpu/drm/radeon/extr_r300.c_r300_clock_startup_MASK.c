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
struct radeon_device {scalar_t__ family; } ;

/* Variables and functions */
 scalar_t__ CHIP_RV350 ; 
 scalar_t__ CHIP_RV380 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_00000D_SCLK_CNTL ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int radeon_dynclks ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 

void FUNC6(struct radeon_device *rdev)
{
	u32 tmp;

	if (radeon_dynclks != -1 && radeon_dynclks)
		FUNC5(rdev, 1);
	/* We need to force on some of the block */
	tmp = FUNC0(R_00000D_SCLK_CNTL);
	tmp |= FUNC1(1) | FUNC3(1);
	if ((rdev->family == CHIP_RV350) || (rdev->family == CHIP_RV380))
		tmp |= FUNC2(1);
	FUNC4(R_00000D_SCLK_CNTL, tmp);
}