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
struct radeon_device {scalar_t__ usec_timeout; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;
struct evergreen_mc_save {int dummy; } ;

/* Variables and functions */
 scalar_t__ CONFIG_MEMSIZE ; 
 scalar_t__ CP_CE_HALT ; 
 scalar_t__ CP_ME_CNTL ; 
 scalar_t__ CP_ME_HALT ; 
 scalar_t__ CP_PFP_HALT ; 
 scalar_t__ DMA0_REGISTER_OFFSET ; 
 scalar_t__ DMA1_REGISTER_OFFSET ; 
 scalar_t__ DMA_RB_CNTL ; 
 scalar_t__ DMA_RB_ENABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,struct evergreen_mc_save*) ; 
 scalar_t__ FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct radeon_device *rdev)
{
	struct evergreen_mc_save save;
	u32 tmp, i;

	FUNC2(rdev->dev, "GPU pci config reset\n");

	/* disable dpm? */

	/* disable cg/pg */
	FUNC9(rdev);
	FUNC8(rdev);

	/* Disable CP parsing/prefetching */
	FUNC1(CP_ME_CNTL, CP_ME_HALT | CP_PFP_HALT | CP_CE_HALT);
	/* dma0 */
	tmp = FUNC0(DMA_RB_CNTL + DMA0_REGISTER_OFFSET);
	tmp &= ~DMA_RB_ENABLE;
	FUNC1(DMA_RB_CNTL + DMA0_REGISTER_OFFSET, tmp);
	/* dma1 */
	tmp = FUNC0(DMA_RB_CNTL + DMA1_REGISTER_OFFSET);
	tmp &= ~DMA_RB_ENABLE;
	FUNC1(DMA_RB_CNTL + DMA1_REGISTER_OFFSET, tmp);
	/* XXX other engines? */

	/* halt the rlc, disable cp internal ints */
	FUNC10(rdev);

	FUNC13(50);

	/* disable mem access */
	FUNC4(rdev, &save);
	if (FUNC5(rdev)) {
		FUNC3(rdev->dev, "Wait for MC idle timed out !\n");
	}

	/* set mclk/sclk to bypass */
	FUNC11(rdev);
	/* powerdown spll */
	FUNC12(rdev);
	/* disable BM */
	FUNC6(rdev->pdev);
	/* reset */
	FUNC7(rdev);
	/* wait for asic to come out of reset */
	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(CONFIG_MEMSIZE) != 0xffffffff)
			break;
		FUNC13(1);
	}
}