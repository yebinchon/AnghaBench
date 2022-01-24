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
struct radeon_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CP_CPC_BUSY_STAT ; 
 scalar_t__ CP_CPC_STALLED_STAT1 ; 
 scalar_t__ CP_CPC_STATUS ; 
 scalar_t__ CP_CPF_BUSY_STAT ; 
 scalar_t__ CP_CPF_STALLED_STAT1 ; 
 scalar_t__ CP_CPF_STATUS ; 
 scalar_t__ CP_STALLED_STAT1 ; 
 scalar_t__ CP_STALLED_STAT2 ; 
 scalar_t__ CP_STALLED_STAT3 ; 
 scalar_t__ CP_STAT ; 
 scalar_t__ GRBM_STATUS ; 
 scalar_t__ GRBM_STATUS2 ; 
 scalar_t__ GRBM_STATUS_SE0 ; 
 scalar_t__ GRBM_STATUS_SE1 ; 
 scalar_t__ GRBM_STATUS_SE2 ; 
 scalar_t__ GRBM_STATUS_SE3 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ SDMA0_REGISTER_OFFSET ; 
 scalar_t__ SDMA0_STATUS_REG ; 
 scalar_t__ SDMA1_REGISTER_OFFSET ; 
 scalar_t__ SRBM_STATUS ; 
 scalar_t__ SRBM_STATUS2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	FUNC1(rdev->dev, "  GRBM_STATUS=0x%08X\n",
		FUNC0(GRBM_STATUS));
	FUNC1(rdev->dev, "  GRBM_STATUS2=0x%08X\n",
		FUNC0(GRBM_STATUS2));
	FUNC1(rdev->dev, "  GRBM_STATUS_SE0=0x%08X\n",
		FUNC0(GRBM_STATUS_SE0));
	FUNC1(rdev->dev, "  GRBM_STATUS_SE1=0x%08X\n",
		FUNC0(GRBM_STATUS_SE1));
	FUNC1(rdev->dev, "  GRBM_STATUS_SE2=0x%08X\n",
		FUNC0(GRBM_STATUS_SE2));
	FUNC1(rdev->dev, "  GRBM_STATUS_SE3=0x%08X\n",
		FUNC0(GRBM_STATUS_SE3));
	FUNC1(rdev->dev, "  SRBM_STATUS=0x%08X\n",
		FUNC0(SRBM_STATUS));
	FUNC1(rdev->dev, "  SRBM_STATUS2=0x%08X\n",
		FUNC0(SRBM_STATUS2));
	FUNC1(rdev->dev, "  SDMA0_STATUS_REG   = 0x%08X\n",
		FUNC0(SDMA0_STATUS_REG + SDMA0_REGISTER_OFFSET));
	FUNC1(rdev->dev, "  SDMA1_STATUS_REG   = 0x%08X\n",
		 FUNC0(SDMA0_STATUS_REG + SDMA1_REGISTER_OFFSET));
	FUNC1(rdev->dev, "  CP_STAT = 0x%08x\n", FUNC0(CP_STAT));
	FUNC1(rdev->dev, "  CP_STALLED_STAT1 = 0x%08x\n",
		 FUNC0(CP_STALLED_STAT1));
	FUNC1(rdev->dev, "  CP_STALLED_STAT2 = 0x%08x\n",
		 FUNC0(CP_STALLED_STAT2));
	FUNC1(rdev->dev, "  CP_STALLED_STAT3 = 0x%08x\n",
		 FUNC0(CP_STALLED_STAT3));
	FUNC1(rdev->dev, "  CP_CPF_BUSY_STAT = 0x%08x\n",
		 FUNC0(CP_CPF_BUSY_STAT));
	FUNC1(rdev->dev, "  CP_CPF_STALLED_STAT1 = 0x%08x\n",
		 FUNC0(CP_CPF_STALLED_STAT1));
	FUNC1(rdev->dev, "  CP_CPF_STATUS = 0x%08x\n", FUNC0(CP_CPF_STATUS));
	FUNC1(rdev->dev, "  CP_CPC_BUSY_STAT = 0x%08x\n", FUNC0(CP_CPC_BUSY_STAT));
	FUNC1(rdev->dev, "  CP_CPC_STALLED_STAT1 = 0x%08x\n",
		 FUNC0(CP_CPC_STALLED_STAT1));
	FUNC1(rdev->dev, "  CP_CPC_STATUS = 0x%08x\n", FUNC0(CP_CPC_STATUS));
}