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
struct radeon_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_BUS_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000030_BUS_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct radeon_device *rdev)
{
	u32 tmp;

	/* disable bus mastering */
	tmp = FUNC0(R_000030_BUS_CNTL);
	FUNC1(R_000030_BUS_CNTL, (tmp & 0xFFFFFFFF) | 0x00000044);
	FUNC2(1);
	FUNC1(R_000030_BUS_CNTL, (tmp & 0xFFFFFFFF) | 0x00000042);
	FUNC2(1);
	FUNC1(R_000030_BUS_CNTL, (tmp & 0xFFFFFFFF) | 0x00000040);
	tmp = FUNC0(RADEON_BUS_CNTL);
	FUNC2(1);
	FUNC3(rdev->pdev);
	FUNC2(1);
}