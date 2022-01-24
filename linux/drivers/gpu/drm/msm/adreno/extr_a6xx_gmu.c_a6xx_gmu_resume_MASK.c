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
struct msm_gpu {int /*<<< orphan*/  icc_path; } ;
struct adreno_gpu {struct msm_gpu base; } ;
struct a6xx_gmu {int hung; int /*<<< orphan*/  dev; int /*<<< orphan*/  gmu_irq; int /*<<< orphan*/  gxpd; scalar_t__ nr_gpu_freqs; int /*<<< orphan*/  hfi_irq; int /*<<< orphan*/  clocks; int /*<<< orphan*/  nr_clocks; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  initialized; } ;
struct a6xx_gpu {struct a6xx_gmu gmu; struct adreno_gpu base; } ;

/* Variables and functions */
 int /*<<< orphan*/  A6XX_GMU_IRQ_MASK ; 
 int /*<<< orphan*/  A6XX_HFI_IRQ_MASK ; 
 int GMU_COLD_BOOT ; 
 int GMU_WARM_BOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  REG_A6XX_GMU_AO_HOST_INTERRUPT_CLR ; 
 int /*<<< orphan*/  REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK ; 
 int /*<<< orphan*/  REG_A6XX_GMU_GENERAL_7 ; 
 int /*<<< orphan*/  REG_A6XX_GMU_GMU2HOST_INTR_CLR ; 
 int /*<<< orphan*/  REG_A6XX_GMU_GMU2HOST_INTR_MASK ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct a6xx_gmu*,scalar_t__) ; 
 int FUNC4 (struct a6xx_gmu*,int) ; 
 int FUNC5 (struct a6xx_gmu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct a6xx_gmu*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct a6xx_gmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct a6xx_gmu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct a6xx_gpu *a6xx_gpu)
{
	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
	struct msm_gpu *gpu = &adreno_gpu->base;
	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
	int status, ret;

	if (FUNC2(!gmu->initialized, "The GMU is not set up yet\n"))
		return 0;

	gmu->hung = false;

	/* Turn on the resources */
	FUNC15(gmu->dev);

	/* Use a known rate to bring up the GMU */
	FUNC8(gmu->core_clk, 200000000);
	ret = FUNC7(gmu->nr_clocks, gmu->clocks);
	if (ret) {
		FUNC16(gmu->dev);
		return ret;
	}

	/* Set the bus quota to a reasonable value for boot */
	FUNC13(gpu->icc_path, 0, FUNC1(3072));

	/* Enable the GMU interrupt */
	FUNC12(gmu, REG_A6XX_GMU_AO_HOST_INTERRUPT_CLR, ~0);
	FUNC12(gmu, REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK, ~A6XX_GMU_IRQ_MASK);
	FUNC10(gmu->gmu_irq);

	/* Check to see if we are doing a cold or warm boot */
	status = FUNC11(gmu, REG_A6XX_GMU_GENERAL_7) == 1 ?
		GMU_WARM_BOOT : GMU_COLD_BOOT;

	ret = FUNC4(gmu, status);
	if (ret)
		goto out;

	ret = FUNC5(gmu, status);
	if (ret)
		goto out;

	/*
	 * Turn on the GMU firmware fault interrupt after we know the boot
	 * sequence is successful
	 */
	FUNC12(gmu, REG_A6XX_GMU_GMU2HOST_INTR_CLR, ~0);
	FUNC12(gmu, REG_A6XX_GMU_GMU2HOST_INTR_MASK, ~A6XX_HFI_IRQ_MASK);
	FUNC10(gmu->hfi_irq);

	/* Set the GPU to the highest power frequency */
	FUNC3(gmu, gmu->nr_gpu_freqs - 1);

	/*
	 * "enable" the GX power domain which won't actually do anything but it
	 * will make sure that the refcounting is correct in case we need to
	 * bring down the GX after a GMU failure
	 */
	if (!FUNC0(gmu->gxpd))
		FUNC14(gmu->gxpd);

out:
	/* On failure, shut down the GMU to leave it in a good state */
	if (ret) {
		FUNC9(gmu->gmu_irq);
		FUNC6(gmu);
		FUNC16(gmu->dev);
	}

	return ret;
}