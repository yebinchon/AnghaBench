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
struct radeon_device {int flags; scalar_t__ usec_timeout; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;
struct kv_reset_save_regs {int /*<<< orphan*/  member_0; } ;
struct evergreen_mc_save {int dummy; } ;

/* Variables and functions */
 scalar_t__ CONFIG_MEMSIZE ; 
 scalar_t__ CP_CE_HALT ; 
 scalar_t__ CP_MEC_CNTL ; 
 scalar_t__ CP_ME_CNTL ; 
 scalar_t__ CP_ME_HALT ; 
 scalar_t__ CP_PFP_HALT ; 
 scalar_t__ MEC_ME1_HALT ; 
 scalar_t__ MEC_ME2_HALT ; 
 int RADEON_IS_IGP ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ SDMA0_ME_CNTL ; 
 scalar_t__ SDMA0_REGISTER_OFFSET ; 
 scalar_t__ SDMA1_REGISTER_OFFSET ; 
 scalar_t__ SDMA_HALT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct evergreen_mc_save*) ; 
 scalar_t__ FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct kv_reset_save_regs*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct kv_reset_save_regs*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct radeon_device *rdev)
{
	struct evergreen_mc_save save;
	struct kv_reset_save_regs kv_save = { 0 };
	u32 tmp, i;

	FUNC5(rdev->dev, "GPU pci config reset\n");

	/* disable dpm? */

	/* disable cg/pg */
	FUNC3(rdev);
	FUNC2(rdev);

	/* Disable GFX parsing/prefetching */
	FUNC1(CP_ME_CNTL, CP_ME_HALT | CP_PFP_HALT | CP_CE_HALT);

	/* Disable MEC parsing/prefetching */
	FUNC1(CP_MEC_CNTL, MEC_ME1_HALT | MEC_ME2_HALT);

	/* sdma0 */
	tmp = FUNC0(SDMA0_ME_CNTL + SDMA0_REGISTER_OFFSET);
	tmp |= SDMA_HALT;
	FUNC1(SDMA0_ME_CNTL + SDMA0_REGISTER_OFFSET, tmp);
	/* sdma1 */
	tmp = FUNC0(SDMA0_ME_CNTL + SDMA1_REGISTER_OFFSET);
	tmp |= SDMA_HALT;
	FUNC1(SDMA0_ME_CNTL + SDMA1_REGISTER_OFFSET, tmp);
	/* XXX other engines? */

	/* halt the rlc, disable cp internal ints */
	FUNC4(rdev);

	FUNC13(50);

	/* disable mem access */
	FUNC7(rdev, &save);
	if (FUNC8(rdev)) {
		FUNC6(rdev->dev, "Wait for MC idle timed out !\n");
	}

	if (rdev->flags & RADEON_IS_IGP)
		FUNC10(rdev, &kv_save);

	/* disable BM */
	FUNC11(rdev->pdev);
	/* reset */
	FUNC12(rdev);

	FUNC13(100);

	/* wait for asic to come out of reset */
	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(CONFIG_MEMSIZE) != 0xffffffff)
			break;
		FUNC13(1);
	}

	/* does asic init need to be run first??? */
	if (rdev->flags & RADEON_IS_IGP)
		FUNC9(rdev, &kv_save);
}