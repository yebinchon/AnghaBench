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

/* Variables and functions */
 int LOAD_BALANCE_ENABLE ; 
 int /*<<< orphan*/  RLC_LB_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_LB_CU_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int,int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev, bool enable)
{
	u32 tmp;

	tmp = FUNC0(RLC_LB_CNTL);
	if (enable)
		tmp |= LOAD_BALANCE_ENABLE;
	else
		tmp &= ~LOAD_BALANCE_ENABLE;
	FUNC1(RLC_LB_CNTL, tmp);

	if (!enable) {
		FUNC2(rdev, 0xffffffff, 0xffffffff);
		FUNC1(SPI_LB_CU_MASK, 0x00ff);
	}
}