#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ model; int features; int minor_features7; int minor_features10; int minor_features0; } ;
struct etnaviv_gpu {int exec_state; int initialized; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  event_free; int /*<<< orphan*/  event; int /*<<< orphan*/  event_bitmap; int /*<<< orphan*/  event_spinlock; int /*<<< orphan*/  buffer; TYPE_3__ identity; int /*<<< orphan*/  sec_mode; TYPE_1__* drm; } ;
struct etnaviv_drm_private {int /*<<< orphan*/  cmdbuf_suballoc; TYPE_2__* mmu_global; } ;
struct TYPE_5__ {scalar_t__ memory_base; } ;
struct TYPE_4__ {struct etnaviv_drm_private* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETNA_NR_EVENTS ; 
 int /*<<< orphan*/  ETNA_SEC_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ PHYS_OFFSET ; 
 scalar_t__ SZ_2G ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int chipFeatures_FAST_CLEAR ; 
 int chipFeatures_FE20 ; 
 int chipFeatures_PIPE_3D ; 
 int chipFeatures_PIPE_VG ; 
 int chipMinorFeatures0_MC20 ; 
 int chipMinorFeatures10_SECURITY_AHB ; 
 int chipMinorFeatures7_BIT_SECURITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct etnaviv_gpu*) ; 
 int FUNC9 (struct etnaviv_gpu*) ; 
 int FUNC10 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct etnaviv_gpu *gpu)
{
	struct etnaviv_drm_private *priv = gpu->drm->dev_private;
	int ret, i;

	ret = FUNC14(gpu->dev);
	if (ret < 0) {
		FUNC3(gpu->dev, "Failed to enable GPU power domain\n");
		return ret;
	}

	FUNC8(gpu);

	if (gpu->identity.model == 0) {
		FUNC3(gpu->dev, "Unknown GPU model\n");
		ret = -ENXIO;
		goto fail;
	}

	/* Exclude VG cores with FE2.0 */
	if (gpu->identity.features & chipFeatures_PIPE_VG &&
	    gpu->identity.features & chipFeatures_FE20) {
		FUNC4(gpu->dev, "Ignoring GPU with VG and FE2.0\n");
		ret = -ENXIO;
		goto fail;
	}

	/*
	 * On cores with security features supported, we claim control over the
	 * security states.
	 */
	if ((gpu->identity.minor_features7 & chipMinorFeatures7_BIT_SECURITY) &&
	    (gpu->identity.minor_features10 & chipMinorFeatures10_SECURITY_AHB))
		gpu->sec_mode = ETNA_SEC_KERNEL;

	ret = FUNC9(gpu);
	if (ret) {
		FUNC3(gpu->dev, "GPU reset failed\n");
		goto fail;
	}

	ret = FUNC10(gpu);
	if (ret)
		goto fail;

	/*
	 * Set the GPU linear window to be at the end of the DMA window, where
	 * the CMA area is likely to reside. This ensures that we are able to
	 * map the command buffers while having the linear window overlap as
	 * much RAM as possible, so we can optimize mappings for other buffers.
	 *
	 * For 3D cores only do this if MC2.0 is present, as with MC1.0 it leads
	 * to different views of the memory on the individual engines.
	 */
	if (!(gpu->identity.features & chipFeatures_PIPE_3D) ||
	    (gpu->identity.minor_features0 & chipMinorFeatures0_MC20)) {
		u32 dma_mask = (u32)FUNC5(gpu->dev);
		if (dma_mask < PHYS_OFFSET + SZ_2G)
			priv->mmu_global->memory_base = PHYS_OFFSET;
		else
			priv->mmu_global->memory_base = dma_mask - SZ_2G + 1;
	} else if (PHYS_OFFSET >= SZ_2G) {
		FUNC4(gpu->dev, "Need to move linear window on MC1.0, disabling TS\n");
		priv->mmu_global->memory_base = PHYS_OFFSET;
		gpu->identity.features &= ~chipFeatures_FAST_CLEAR;
	}

	/* Create buffer: */
	ret = FUNC6(priv->cmdbuf_suballoc, &gpu->buffer,
				  PAGE_SIZE);
	if (ret) {
		FUNC3(gpu->dev, "could not create command buffer\n");
		goto fail;
	}

	/* Setup event management */
	FUNC17(&gpu->event_spinlock);
	FUNC11(&gpu->event_free);
	FUNC1(gpu->event_bitmap, ETNA_NR_EVENTS);
	for (i = 0; i < FUNC0(gpu->event); i++)
		FUNC2(&gpu->event_free);

	/* Now program the hardware */
	FUNC12(&gpu->lock);
	FUNC7(gpu);
	gpu->exec_state = -1;
	FUNC13(&gpu->lock);

	FUNC15(gpu->dev);
	FUNC16(gpu->dev);

	gpu->initialized = true;

	return 0;

fail:
	FUNC15(gpu->dev);
	FUNC16(gpu->dev);

	return ret;
}