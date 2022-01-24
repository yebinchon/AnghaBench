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
struct msm_gpu {TYPE_2__* dev; int /*<<< orphan*/ * rb; TYPE_1__* funcs; } ;
struct adreno_gpu {int gmem; TYPE_3__* info; } ;
struct TYPE_6__ {int quirks; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* flush ) (struct msm_gpu*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int A5XX_INT_MASK ; 
 int FUNC0 (int,int) ; 
 int ADRENO_QUIRK_FAULT_DETECT_MASK ; 
 int ADRENO_QUIRK_LMLOADKILL_DISABLE ; 
 int ADRENO_QUIRK_TWO_PASS_USE_WFI ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  CP_EVENT_WRITE ; 
 int /*<<< orphan*/  CP_SET_SECURE_MODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int PERF_CP_ALWAYS_COUNT ; 
 int REG_A5XX_CP_ADDR_MODE_CNTL ; 
 int REG_A5XX_CP_CHICKEN_DBG ; 
 int REG_A5XX_CP_MEQ_THRESHOLDS ; 
 int REG_A5XX_CP_MERCIU_SIZE ; 
 int REG_A5XX_CP_PERFCTR_CP_SEL_0 ; 
 int REG_A5XX_CP_PFP_ME_CNTL ; 
 int FUNC4 (int) ; 
 int REG_A5XX_CP_PROTECT_CNTL ; 
 int REG_A5XX_CP_ROQ_THRESHOLDS_1 ; 
 int REG_A5XX_CP_ROQ_THRESHOLDS_2 ; 
 int REG_A5XX_GRAS_ADDR_MODE_CNTL ; 
 int REG_A5XX_HLSQ_ADDR_MODE_CNTL ; 
 int REG_A5XX_HLSQ_DBG_ECO_CNTL ; 
 int REG_A5XX_PC_ADDR_MODE_CNTL ; 
 int REG_A5XX_PC_DBG_ECO_CNTL ; 
 int REG_A5XX_RBBM_AHB_CNTL0 ; 
 int REG_A5XX_RBBM_AHB_CNTL1 ; 
 int REG_A5XX_RBBM_AHB_CNTL2 ; 
 int REG_A5XX_RBBM_INTERFACE_HANG_INT_CNTL ; 
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL11 ; 
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL12 ; 
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL13 ; 
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL14 ; 
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL15 ; 
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL16 ; 
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL17 ; 
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL18 ; 
 int REG_A5XX_RBBM_INT_0_MASK ; 
 int REG_A5XX_RBBM_PERFCTR_CNTL ; 
 int REG_A5XX_RBBM_PERFCTR_GPU_BUSY_MASKED ; 
 int REG_A5XX_RBBM_PERFCTR_RBBM_SEL_0 ; 
 int REG_A5XX_RBBM_SECVID_TRUST_CNTL ; 
 int REG_A5XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL ; 
 int REG_A5XX_RBBM_SECVID_TSB_CNTL ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI ; 
 int REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO ; 
 int REG_A5XX_RBBM_SECVID_TSB_TRUSTED_SIZE ; 
 int REG_A5XX_RB_ADDR_MODE_CNTL ; 
 int REG_A5XX_RB_MODE_CNTL ; 
 int REG_A5XX_SP_ADDR_MODE_CNTL ; 
 int REG_A5XX_TPL1_ADDR_MODE_CNTL ; 
 int REG_A5XX_TPL1_MODE_CNTL ; 
 int REG_A5XX_UCHE_ADDR_MODE_CNTL ; 
 int REG_A5XX_UCHE_CACHE_WAYS ; 
 int REG_A5XX_UCHE_DBG_ECO_CNTL_2 ; 
 int REG_A5XX_UCHE_GMEM_RANGE_MAX_HI ; 
 int REG_A5XX_UCHE_GMEM_RANGE_MAX_LO ; 
 int REG_A5XX_UCHE_GMEM_RANGE_MIN_HI ; 
 int REG_A5XX_UCHE_GMEM_RANGE_MIN_LO ; 
 int REG_A5XX_UCHE_TRAP_BASE_HI ; 
 int REG_A5XX_UCHE_TRAP_BASE_LO ; 
 int REG_A5XX_UCHE_WRITE_THRU_BASE_HI ; 
 int REG_A5XX_UCHE_WRITE_THRU_BASE_LO ; 
 int REG_A5XX_VBIF_GATE_OFF_WRREQ_EN ; 
 int REG_A5XX_VBIF_ROUND_ROBIN_QOS_ARB ; 
 int REG_A5XX_VFD_ADDR_MODE_CNTL ; 
 int REG_A5XX_VPC_ADDR_MODE_CNTL ; 
 int REG_A5XX_VPC_DBG_ECO_CNTL ; 
 int REG_A5XX_VSC_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct msm_gpu*) ; 
 int FUNC8 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct msm_gpu*,int) ; 
 int FUNC12 (struct msm_gpu*) ; 
 int FUNC13 (struct msm_gpu*) ; 
 int FUNC14 (struct msm_gpu*) ; 
 scalar_t__ FUNC15 (struct adreno_gpu*) ; 
 scalar_t__ FUNC16 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct msm_gpu*,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct msm_gpu*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct msm_gpu*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 struct adreno_gpu* FUNC23 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC24(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC23(gpu);
	int ret;

	FUNC19(gpu, REG_A5XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x00000003);

	if (FUNC16(adreno_gpu))
		FUNC19(gpu, REG_A5XX_VBIF_GATE_OFF_WRREQ_EN, 0x00000009);

	/* Make all blocks contribute to the GPU BUSY perf counter */
	FUNC19(gpu, REG_A5XX_RBBM_PERFCTR_GPU_BUSY_MASKED, 0xFFFFFFFF);

	/* Enable RBBM error reporting bits */
	FUNC19(gpu, REG_A5XX_RBBM_AHB_CNTL0, 0x00000001);

	if (adreno_gpu->info->quirks & ADRENO_QUIRK_FAULT_DETECT_MASK) {
		/*
		 * Mask out the activity signals from RB1-3 to avoid false
		 * positives
		 */

		FUNC19(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL11,
			0xF0000000);
		FUNC19(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL12,
			0xFFFFFFFF);
		FUNC19(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL13,
			0xFFFFFFFF);
		FUNC19(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL14,
			0xFFFFFFFF);
		FUNC19(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL15,
			0xFFFFFFFF);
		FUNC19(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL16,
			0xFFFFFFFF);
		FUNC19(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL17,
			0xFFFFFFFF);
		FUNC19(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL18,
			0xFFFFFFFF);
	}

	/* Enable fault detection */
	FUNC19(gpu, REG_A5XX_RBBM_INTERFACE_HANG_INT_CNTL,
		(1 << 30) | 0xFFFF);

	/* Turn on performance counters */
	FUNC19(gpu, REG_A5XX_RBBM_PERFCTR_CNTL, 0x01);

	/* Select CP0 to always count cycles */
	FUNC19(gpu, REG_A5XX_CP_PERFCTR_CP_SEL_0, PERF_CP_ALWAYS_COUNT);

	/* Select RBBM0 to countable 6 to get the busy status for devfreq */
	FUNC19(gpu, REG_A5XX_RBBM_PERFCTR_RBBM_SEL_0, 6);

	/* Increase VFD cache access so LRZ and other data gets evicted less */
	FUNC19(gpu, REG_A5XX_UCHE_CACHE_WAYS, 0x02);

	/* Disable L2 bypass in the UCHE */
	FUNC19(gpu, REG_A5XX_UCHE_TRAP_BASE_LO, 0xFFFF0000);
	FUNC19(gpu, REG_A5XX_UCHE_TRAP_BASE_HI, 0x0001FFFF);
	FUNC19(gpu, REG_A5XX_UCHE_WRITE_THRU_BASE_LO, 0xFFFF0000);
	FUNC19(gpu, REG_A5XX_UCHE_WRITE_THRU_BASE_HI, 0x0001FFFF);

	/* Set the GMEM VA range (0 to gpu->gmem) */
	FUNC19(gpu, REG_A5XX_UCHE_GMEM_RANGE_MIN_LO, 0x00100000);
	FUNC19(gpu, REG_A5XX_UCHE_GMEM_RANGE_MIN_HI, 0x00000000);
	FUNC19(gpu, REG_A5XX_UCHE_GMEM_RANGE_MAX_LO,
		0x00100000 + adreno_gpu->gmem - 1);
	FUNC19(gpu, REG_A5XX_UCHE_GMEM_RANGE_MAX_HI, 0x00000000);

	FUNC19(gpu, REG_A5XX_CP_MEQ_THRESHOLDS, 0x40);
	if (FUNC15(adreno_gpu))
		FUNC19(gpu, REG_A5XX_CP_MERCIU_SIZE, 0x40);
	if (FUNC16(adreno_gpu))
		FUNC19(gpu, REG_A5XX_CP_MERCIU_SIZE, 0x400);
	FUNC19(gpu, REG_A5XX_CP_ROQ_THRESHOLDS_2, 0x80000060);
	FUNC19(gpu, REG_A5XX_CP_ROQ_THRESHOLDS_1, 0x40201B16);

	FUNC19(gpu, REG_A5XX_PC_DBG_ECO_CNTL, (0x400 << 11 | 0x300 << 22));

	if (adreno_gpu->info->quirks & ADRENO_QUIRK_TWO_PASS_USE_WFI)
		FUNC18(gpu, REG_A5XX_PC_DBG_ECO_CNTL, 0, (1 << 8));

	FUNC19(gpu, REG_A5XX_PC_DBG_ECO_CNTL, 0xc0200100);

	/* Enable USE_RETENTION_FLOPS */
	FUNC19(gpu, REG_A5XX_CP_CHICKEN_DBG, 0x02000000);

	/* Enable ME/PFP split notification */
	FUNC19(gpu, REG_A5XX_RBBM_AHB_CNTL1, 0xA6FFFFFF);

	/* Enable HWCG */
	FUNC11(gpu, true);

	FUNC19(gpu, REG_A5XX_RBBM_AHB_CNTL2, 0x0000003F);

	/* Set the highest bank bit */
	FUNC19(gpu, REG_A5XX_TPL1_MODE_CNTL, 2 << 7);
	FUNC19(gpu, REG_A5XX_RB_MODE_CNTL, 2 << 1);
	if (FUNC16(adreno_gpu))
		FUNC19(gpu, REG_A5XX_UCHE_DBG_ECO_CNTL_2, 2);

	/* Protect registers from the CP */
	FUNC19(gpu, REG_A5XX_CP_PROTECT_CNTL, 0x00000007);

	/* RBBM */
	FUNC19(gpu, FUNC4(0), FUNC0(0x04, 4));
	FUNC19(gpu, FUNC4(1), FUNC0(0x08, 8));
	FUNC19(gpu, FUNC4(2), FUNC0(0x10, 16));
	FUNC19(gpu, FUNC4(3), FUNC0(0x20, 32));
	FUNC19(gpu, FUNC4(4), FUNC0(0x40, 64));
	FUNC19(gpu, FUNC4(5), FUNC0(0x80, 64));

	/* Content protect */
	FUNC19(gpu, FUNC4(6),
		FUNC0(REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO,
			16));
	FUNC19(gpu, FUNC4(7),
		FUNC0(REG_A5XX_RBBM_SECVID_TRUST_CNTL, 2));

	/* CP */
	FUNC19(gpu, FUNC4(8), FUNC0(0x800, 64));
	FUNC19(gpu, FUNC4(9), FUNC0(0x840, 8));
	FUNC19(gpu, FUNC4(10), FUNC0(0x880, 32));
	FUNC19(gpu, FUNC4(11), FUNC0(0xAA0, 1));

	/* RB */
	FUNC19(gpu, FUNC4(12), FUNC0(0xCC0, 1));
	FUNC19(gpu, FUNC4(13), FUNC0(0xCF0, 2));

	/* VPC */
	FUNC19(gpu, FUNC4(14), FUNC0(0xE68, 8));
	FUNC19(gpu, FUNC4(15), FUNC0(0xE70, 4));

	/* UCHE */
	FUNC19(gpu, FUNC4(16), FUNC0(0xE80, 16));

	if (FUNC15(adreno_gpu))
		FUNC19(gpu, FUNC4(17),
			FUNC0(0x10000, 0x8000));

	FUNC19(gpu, REG_A5XX_RBBM_SECVID_TSB_CNTL, 0);
	/*
	 * Disable the trusted memory range - we don't actually supported secure
	 * memory rendering at this point in time and we don't want to block off
	 * part of the virtual memory space.
	 */
	FUNC20(gpu, REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO,
		REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI, 0x00000000);
	FUNC19(gpu, REG_A5XX_RBBM_SECVID_TSB_TRUSTED_SIZE, 0x00000000);

	/* Put the GPU into 64 bit by default */
	FUNC19(gpu, REG_A5XX_CP_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_VSC_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_GRAS_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_RB_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_PC_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_HLSQ_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_VFD_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_VPC_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_UCHE_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_SP_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_TPL1_ADDR_MODE_CNTL, 0x1);
	FUNC19(gpu, REG_A5XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL, 0x1);

	/*
	 * VPC corner case with local memory load kill leads to corrupt
	 * internal state. Normal Disable does not work for all a5x chips.
	 * So do the following setting to disable it.
	 */
	if (adreno_gpu->info->quirks & ADRENO_QUIRK_LMLOADKILL_DISABLE) {
		FUNC18(gpu, REG_A5XX_VPC_DBG_ECO_CNTL, 0, FUNC1(23));
		FUNC18(gpu, REG_A5XX_HLSQ_DBG_ECO_CNTL, FUNC1(18), 0);
	}

	ret = FUNC14(gpu);
	if (ret)
		return ret;

	FUNC9(gpu);

	FUNC5(gpu);

	ret = FUNC12(gpu);
	if (ret)
		return ret;

	/* Disable the interrupts through the initial bringup stage */
	FUNC19(gpu, REG_A5XX_RBBM_INT_0_MASK, A5XX_INT_MASK);

	/* Clear ME_HALT to start the micro engine */
	FUNC19(gpu, REG_A5XX_CP_PFP_ME_CNTL, 0);
	ret = FUNC7(gpu);
	if (ret)
		return ret;

	ret = FUNC8(gpu);
	if (ret)
		return ret;

	/*
	 * Send a pipeline event stat to get misbehaving counters to start
	 * ticking correctly
	 */
	if (FUNC15(adreno_gpu)) {
		FUNC2(gpu->rb[0], CP_EVENT_WRITE, 1);
		FUNC3(gpu->rb[0], 0x0F);

		gpu->funcs->flush(gpu, gpu->rb[0]);
		if (!FUNC6(gpu, gpu->rb[0]))
			return -EINVAL;
	}

	/*
	 * Try to load a zap shader into the secure world. If successful
	 * we can use the CP to switch out of secure mode. If not then we
	 * have no resource but to try to switch ourselves out manually. If we
	 * guessed wrong then access to the RBBM_SECVID_TRUST_CNTL register will
	 * be blocked and a permissions violation will soon follow.
	 */
	ret = FUNC13(gpu);
	if (!ret) {
		FUNC2(gpu->rb[0], CP_SET_SECURE_MODE, 1);
		FUNC3(gpu->rb[0], 0x00000000);

		gpu->funcs->flush(gpu, gpu->rb[0]);
		if (!FUNC6(gpu, gpu->rb[0]))
			return -EINVAL;
	} else {
		/* Print a warning so if we die, we know why */
		FUNC17(gpu->dev->dev,
			"Zap shader not enabled - using SECVID_TRUST_CNTL instead\n");
		FUNC19(gpu, REG_A5XX_RBBM_SECVID_TRUST_CNTL, 0x0);
	}

	/* Last step - yield the ringbuffer */
	FUNC10(gpu);

	return 0;
}