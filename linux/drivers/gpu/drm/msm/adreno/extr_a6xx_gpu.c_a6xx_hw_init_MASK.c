#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msm_gpu {TYPE_1__* dev; int /*<<< orphan*/ * rb; } ;
struct adreno_gpu {int gmem; } ;
struct a6xx_gpu {int /*<<< orphan*/  gmu; int /*<<< orphan*/  cur_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int A6XX_INT_MASK ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  CP_SET_SECURE_MODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  GMU_OOB_BOOT_SLUMBER ; 
 int /*<<< orphan*/  GMU_OOB_GPU_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int PERF_CP_ALWAYS_COUNT ; 
 int /*<<< orphan*/  REG_A6XX_CP_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_CP_AHB_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_CP_MEM_POOL_SIZE ; 
 int /*<<< orphan*/  REG_A6XX_CP_PERFCTR_CP_SEL_0 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  REG_A6XX_CP_PROTECT_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_CP_ROQ_THRESHOLDS_1 ; 
 int /*<<< orphan*/  REG_A6XX_CP_ROQ_THRESHOLDS_2 ; 
 int /*<<< orphan*/  REG_A6XX_CP_SQE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_GRAS_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_HLSQ_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_PC_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_PC_DBG_ECO_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_INT_0_MASK ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_PERFCTR_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_PERFCTR_GPU_BUSY_MASKED ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_SECVID_TRUST_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_SECVID_TSB_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_SECVID_TSB_TRUSTED_SIZE ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_VBIF_CLIENT_QOS_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_RB_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_RB_NC_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_SP_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_SP_NC_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_TPL1_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_TPL1_NC_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_CACHE_WAYS ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_CLIENT_PF ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_FILTER_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_GMEM_RANGE_MAX_HI ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_GMEM_RANGE_MAX_LO ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_GMEM_RANGE_MIN_HI ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_GMEM_RANGE_MIN_LO ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_TRAP_BASE_HI ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_TRAP_BASE_LO ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_WRITE_RANGE_MAX_HI ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_WRITE_RANGE_MAX_LO ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_WRITE_THRU_BASE_HI ; 
 int /*<<< orphan*/  REG_A6XX_UCHE_WRITE_THRU_BASE_LO ; 
 int /*<<< orphan*/  REG_A6XX_VBIF_GATE_OFF_WRREQ_EN ; 
 int /*<<< orphan*/  REG_A6XX_VFD_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_VPC_ADDR_MODE_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_VSC_ADDR_MODE_CNTL ; 
 int FUNC5 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct msm_gpu*,int) ; 
 int FUNC11 (struct msm_gpu*) ; 
 int FUNC12 (struct msm_gpu*) ; 
 int FUNC13 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct a6xx_gpu* FUNC17 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC18 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC19(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC18(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC17(adreno_gpu);
	int ret;

	/* Make sure the GMU keeps the GPU on while we set it up */
	FUNC8(&a6xx_gpu->gmu, GMU_OOB_GPU_SET);

	FUNC15(gpu, REG_A6XX_RBBM_SECVID_TSB_CNTL, 0);

	/*
	 * Disable the trusted memory range - we don't actually supported secure
	 * memory rendering at this point in time and we don't want to block off
	 * part of the virtual memory space.
	 */
	FUNC16(gpu, REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO,
		REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI, 0x00000000);
	FUNC15(gpu, REG_A6XX_RBBM_SECVID_TSB_TRUSTED_SIZE, 0x00000000);

	/* Turn on 64 bit addressing for all blocks */
	FUNC15(gpu, REG_A6XX_CP_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_VSC_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_GRAS_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_RB_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_PC_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_HLSQ_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_VFD_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_VPC_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_UCHE_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_SP_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_TPL1_ADDR_MODE_CNTL, 0x1);
	FUNC15(gpu, REG_A6XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL, 0x1);

	/* enable hardware clockgating */
	FUNC10(gpu, true);

	/* VBIF start */
	FUNC15(gpu, REG_A6XX_VBIF_GATE_OFF_WRREQ_EN, 0x00000009);
	FUNC15(gpu, REG_A6XX_RBBM_VBIF_CLIENT_QOS_CNTL, 0x3);

	/* Make all blocks contribute to the GPU BUSY perf counter */
	FUNC15(gpu, REG_A6XX_RBBM_PERFCTR_GPU_BUSY_MASKED, 0xffffffff);

	/* Disable L2 bypass in the UCHE */
	FUNC15(gpu, REG_A6XX_UCHE_WRITE_RANGE_MAX_LO, 0xffffffc0);
	FUNC15(gpu, REG_A6XX_UCHE_WRITE_RANGE_MAX_HI, 0x0001ffff);
	FUNC15(gpu, REG_A6XX_UCHE_TRAP_BASE_LO, 0xfffff000);
	FUNC15(gpu, REG_A6XX_UCHE_TRAP_BASE_HI, 0x0001ffff);
	FUNC15(gpu, REG_A6XX_UCHE_WRITE_THRU_BASE_LO, 0xfffff000);
	FUNC15(gpu, REG_A6XX_UCHE_WRITE_THRU_BASE_HI, 0x0001ffff);

	/* Set the GMEM VA range [0x100000:0x100000 + gpu->gmem - 1] */
	FUNC16(gpu, REG_A6XX_UCHE_GMEM_RANGE_MIN_LO,
		REG_A6XX_UCHE_GMEM_RANGE_MIN_HI, 0x00100000);

	FUNC16(gpu, REG_A6XX_UCHE_GMEM_RANGE_MAX_LO,
		REG_A6XX_UCHE_GMEM_RANGE_MAX_HI,
		0x00100000 + adreno_gpu->gmem - 1);

	FUNC15(gpu, REG_A6XX_UCHE_FILTER_CNTL, 0x804);
	FUNC15(gpu, REG_A6XX_UCHE_CACHE_WAYS, 0x4);

	FUNC15(gpu, REG_A6XX_CP_ROQ_THRESHOLDS_2, 0x010000c0);
	FUNC15(gpu, REG_A6XX_CP_ROQ_THRESHOLDS_1, 0x8040362c);

	/* Setting the mem pool size */
	FUNC15(gpu, REG_A6XX_CP_MEM_POOL_SIZE, 128);

	/* Setting the primFifo thresholds default values */
	FUNC15(gpu, REG_A6XX_PC_DBG_ECO_CNTL, (0x300 << 11));

	/* Set the AHB default slave response to "ERROR" */
	FUNC15(gpu, REG_A6XX_CP_AHB_CNTL, 0x1);

	/* Turn on performance counters */
	FUNC15(gpu, REG_A6XX_RBBM_PERFCTR_CNTL, 0x1);

	/* Select CP0 to always count cycles */
	FUNC15(gpu, REG_A6XX_CP_PERFCTR_CP_SEL_0, PERF_CP_ALWAYS_COUNT);

	FUNC15(gpu, REG_A6XX_RB_NC_MODE_CNTL, 2 << 1);
	FUNC15(gpu, REG_A6XX_TPL1_NC_MODE_CNTL, 2 << 1);
	FUNC15(gpu, REG_A6XX_SP_NC_MODE_CNTL, 2 << 1);
	FUNC15(gpu, REG_A6XX_UCHE_MODE_CNTL, 2 << 21);

	/* Enable fault detection */
	FUNC15(gpu, REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL,
		(1 << 30) | 0x1fffff);

	FUNC15(gpu, REG_A6XX_UCHE_CLIENT_PF, 1);

	/* Protect registers from the CP */
	FUNC15(gpu, REG_A6XX_CP_PROTECT_CNTL, 0x00000003);

	FUNC15(gpu, FUNC4(0),
		FUNC0(0x600, 0x51));
	FUNC15(gpu, FUNC4(1), FUNC1(0xae50, 0x2));
	FUNC15(gpu, FUNC4(2), FUNC1(0x9624, 0x13));
	FUNC15(gpu, FUNC4(3), FUNC1(0x8630, 0x8));
	FUNC15(gpu, FUNC4(4), FUNC1(0x9e70, 0x1));
	FUNC15(gpu, FUNC4(5), FUNC1(0x9e78, 0x187));
	FUNC15(gpu, FUNC4(6), FUNC1(0xf000, 0x810));
	FUNC15(gpu, FUNC4(7),
		FUNC0(0xfc00, 0x3));
	FUNC15(gpu, FUNC4(8), FUNC1(0x50e, 0x0));
	FUNC15(gpu, FUNC4(9), FUNC0(0x50f, 0x0));
	FUNC15(gpu, FUNC4(10), FUNC1(0x510, 0x0));
	FUNC15(gpu, FUNC4(11),
		FUNC0(0x0, 0x4f9));
	FUNC15(gpu, FUNC4(12),
		FUNC0(0x501, 0xa));
	FUNC15(gpu, FUNC4(13),
		FUNC0(0x511, 0x44));
	FUNC15(gpu, FUNC4(14), FUNC1(0xe00, 0xe));
	FUNC15(gpu, FUNC4(15), FUNC1(0x8e00, 0x0));
	FUNC15(gpu, FUNC4(16), FUNC1(0x8e50, 0xf));
	FUNC15(gpu, FUNC4(17), FUNC1(0xbe02, 0x0));
	FUNC15(gpu, FUNC4(18),
		FUNC1(0xbe20, 0x11f3));
	FUNC15(gpu, FUNC4(19), FUNC1(0x800, 0x82));
	FUNC15(gpu, FUNC4(20), FUNC1(0x8a0, 0x8));
	FUNC15(gpu, FUNC4(21), FUNC1(0x8ab, 0x19));
	FUNC15(gpu, FUNC4(22), FUNC1(0x900, 0x4d));
	FUNC15(gpu, FUNC4(23), FUNC1(0x98d, 0x76));
	FUNC15(gpu, FUNC4(24),
			FUNC0(0x980, 0x4));
	FUNC15(gpu, FUNC4(25), FUNC1(0xa630, 0x0));

	/* Enable interrupts */
	FUNC15(gpu, REG_A6XX_RBBM_INT_0_MASK, A6XX_INT_MASK);

	ret = FUNC13(gpu);
	if (ret)
		goto out;

	ret = FUNC11(gpu);
	if (ret)
		goto out;

	/* Always come up on rb 0 */
	a6xx_gpu->cur_ring = gpu->rb[0];

	/* Enable the SQE_to start the CP engine */
	FUNC15(gpu, REG_A6XX_CP_SQE_CNTL, 1);

	ret = FUNC5(gpu);
	if (ret)
		goto out;

	/*
	 * Try to load a zap shader into the secure world. If successful
	 * we can use the CP to switch out of secure mode. If not then we
	 * have no resource but to try to switch ourselves out manually. If we
	 * guessed wrong then access to the RBBM_SECVID_TRUST_CNTL register will
	 * be blocked and a permissions violation will soon follow.
	 */
	ret = FUNC12(gpu);
	if (!ret) {
		FUNC2(gpu->rb[0], CP_SET_SECURE_MODE, 1);
		FUNC3(gpu->rb[0], 0x00000000);

		FUNC6(gpu, gpu->rb[0]);
		if (!FUNC9(gpu, gpu->rb[0]))
			return -EINVAL;
	} else {
		/* Print a warning so if we die, we know why */
		FUNC14(gpu->dev->dev,
			"Zap shader not enabled - using SECVID_TRUST_CNTL instead\n");
		FUNC15(gpu, REG_A6XX_RBBM_SECVID_TRUST_CNTL, 0x0);
		ret = 0;
	}

out:
	/*
	 * Tell the GMU that we are done touching the GPU and it can start power
	 * management
	 */
	FUNC7(&a6xx_gpu->gmu, GMU_OOB_GPU_SET);

	/* Take the GMU out of its special boot mode */
	FUNC7(&a6xx_gpu->gmu, GMU_OOB_BOOT_SLUMBER);

	return ret;
}