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
struct rv515_mc_save {int dummy; } ;
struct radeon_device {scalar_t__ family; scalar_t__ usec_timeout; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIF_SCRATCH0 ; 
 int /*<<< orphan*/  BUS_CNTL ; 
 scalar_t__ CHIP_RV770 ; 
 int /*<<< orphan*/  CONFIG_MEMSIZE ; 
 int /*<<< orphan*/  DMA_RB_CNTL ; 
 scalar_t__ DMA_RB_ENABLE ; 
 int /*<<< orphan*/  RLC_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_0086D8_CP_ME_CNTL ; 
 scalar_t__ SOFT_RESET_BIF ; 
 int /*<<< orphan*/  SRBM_SOFT_RESET ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ VGA_COHE_SPEC_TIMER_DIS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct rv515_mc_save*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct radeon_device *rdev)
{
	struct rv515_mc_save save;
	u32 tmp, i;

	FUNC4(rdev->dev, "GPU pci config reset\n");

	/* disable dpm? */

	/* Disable CP parsing/prefetching */
	if (rdev->family >= CHIP_RV770)
		FUNC3(R_0086D8_CP_ME_CNTL, FUNC1(1) | FUNC2(1));
	else
		FUNC3(R_0086D8_CP_ME_CNTL, FUNC1(1));

	/* disable the RLC */
	FUNC3(RLC_CNTL, 0);

	/* Disable DMA */
	tmp = FUNC0(DMA_RB_CNTL);
	tmp &= ~DMA_RB_ENABLE;
	FUNC3(DMA_RB_CNTL, tmp);

	FUNC6(50);

	/* set mclk/sclk to bypass */
	if (rdev->family >= CHIP_RV770)
		FUNC11(rdev);
	/* disable BM */
	FUNC7(rdev->pdev);
	/* disable mem access */
	FUNC10(rdev, &save);
	if (FUNC8(rdev)) {
		FUNC5(rdev->dev, "Wait for MC idle timedout !\n");
	}

	/* BIF reset workaround.  Not sure if this is needed on 6xx */
	tmp = FUNC0(BUS_CNTL);
	tmp |= VGA_COHE_SPEC_TIMER_DIS;
	FUNC3(BUS_CNTL, tmp);

	tmp = FUNC0(BIF_SCRATCH0);

	/* reset */
	FUNC9(rdev);
	FUNC6(1);

	/* BIF reset workaround.  Not sure if this is needed on 6xx */
	tmp = SOFT_RESET_BIF;
	FUNC3(SRBM_SOFT_RESET, tmp);
	FUNC6(1);
	FUNC3(SRBM_SOFT_RESET, 0);

	/* wait for asic to come out of reset */
	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(CONFIG_MEMSIZE) != 0xffffffff)
			break;
		FUNC12(1);
	}
}