#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct uc_css_header {int dummy; } ;
struct intel_uncore {int dummy; } ;
struct intel_uc_fw {int ucode_size; int /*<<< orphan*/  type; } ;
struct intel_gt {TYPE_2__* i915; int /*<<< orphan*/  ggtt; struct intel_uncore* uncore; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int DMA_ADDRESS_SPACE_WOPCM ; 
 int /*<<< orphan*/  DMA_ADDR_0_HIGH ; 
 int /*<<< orphan*/  DMA_ADDR_0_LOW ; 
 int /*<<< orphan*/  DMA_ADDR_1_HIGH ; 
 int /*<<< orphan*/  DMA_ADDR_1_LOW ; 
 int /*<<< orphan*/  DMA_COPY_SIZE ; 
 int /*<<< orphan*/  DMA_CTRL ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int START_DMA ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct intel_uncore*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_uc_fw*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
		      u32 wopcm_offset, u32 dma_flags)
{
	struct intel_uncore *uncore = gt->uncore;
	u64 offset;
	int ret;

	ret = FUNC4(gt->i915, -ETIMEDOUT);
	if (ret)
		return ret;

	FUNC6(uncore, FORCEWAKE_ALL);

	/* Set the source address for the uCode */
	offset = FUNC12(uc_fw, gt->ggtt);
	FUNC0(FUNC13(offset) & 0xFFFF0000);
	FUNC9(uncore, DMA_ADDR_0_LOW, FUNC11(offset));
	FUNC9(uncore, DMA_ADDR_0_HIGH, FUNC13(offset));

	/* Set the DMA destination */
	FUNC9(uncore, DMA_ADDR_1_LOW, wopcm_offset);
	FUNC9(uncore, DMA_ADDR_1_HIGH, DMA_ADDRESS_SPACE_WOPCM);

	/*
	 * Set the transfer size. The header plus uCode will be copied to WOPCM
	 * via DMA, excluding any other components
	 */
	FUNC9(uncore, DMA_COPY_SIZE,
			      sizeof(struct uc_css_header) + uc_fw->ucode_size);

	/* Start the DMA */
	FUNC9(uncore, DMA_CTRL,
			      FUNC2(dma_flags | START_DMA));

	/* Wait for DMA to finish */
	ret = FUNC10(uncore, DMA_CTRL, START_DMA, 0, 100);
	if (ret)
		FUNC3(gt->i915->drm.dev, "DMA for %s fw failed, DMA_CTRL=%u\n",
			FUNC5(uc_fw->type),
			FUNC8(uncore, DMA_CTRL));

	/* Disable the bits once DMA is over */
	FUNC9(uncore, DMA_CTRL, FUNC1(dma_flags));

	FUNC7(uncore, FORCEWAKE_ALL);

	return ret;
}