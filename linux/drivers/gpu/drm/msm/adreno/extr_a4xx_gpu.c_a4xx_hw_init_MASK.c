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
typedef  int uint32_t ;
struct msm_gpu {int dummy; } ;
struct adreno_gpu {TYPE_1__** fw; } ;
struct a4xx_gpu {int ocmem_base; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;

/* Variables and functions */
 unsigned int A4XX_CGC_HLSQ_EARLY_CYC__MASK ; 
 int A4XX_CGC_HLSQ_EARLY_CYC__SHIFT ; 
 int A4XX_INT0_MASK ; 
 size_t ADRENO_FW_PFP ; 
 size_t ADRENO_FW_PM4 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int CP_ALWAYS_COUNT ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_A4XX_CP_DEBUG ; 
 int /*<<< orphan*/  REG_A4XX_CP_ME_CNTL ; 
 int /*<<< orphan*/  REG_A4XX_CP_ME_RAM_DATA ; 
 int /*<<< orphan*/  REG_A4XX_CP_ME_RAM_WADDR ; 
 int /*<<< orphan*/  REG_A4XX_CP_PERFCTR_CP_SEL_0 ; 
 int /*<<< orphan*/  REG_A4XX_CP_PFP_UCODE_ADDR ; 
 int /*<<< orphan*/  REG_A4XX_CP_PFP_UCODE_DATA ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  REG_A4XX_CP_PROTECT_CTRL ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_AHB_CTL0 ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_AHB_CTL1 ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_DELAY_HLSQ ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_GPU_BUSY_MASKED ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_INTERFACE_HANG_INT_CTL ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_INT_0_MASK ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_PERFCTR_CTL ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_RBBM_CTL ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_SP_HYST_CNT ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_SP_REGFILE_SLEEP_CNTL_0 ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_SP_REGFILE_SLEEP_CNTL_1 ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_WAIT_IDLE_CLOCKS_CTL ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_WAIT_IDLE_CLOCKS_CTL2 ; 
 int /*<<< orphan*/  REG_A4XX_RB_GMEM_BASE_ADDR ; 
 int /*<<< orphan*/  REG_A4XX_UCHE_CACHE_WAYS_VFD ; 
 int /*<<< orphan*/  REG_A4XX_UCHE_TRAP_BASE_HI ; 
 int /*<<< orphan*/  REG_A4XX_UCHE_TRAP_BASE_LO ; 
 int /*<<< orphan*/  REG_A4XX_VBIF_ABIT_SORT ; 
 int /*<<< orphan*/  REG_A4XX_VBIF_ABIT_SORT_CONF ; 
 int /*<<< orphan*/  REG_A4XX_VBIF_GATE_OFF_WRREQ_EN ; 
 int /*<<< orphan*/  REG_A4XX_VBIF_IN_RD_LIM_CONF0 ; 
 int /*<<< orphan*/  REG_A4XX_VBIF_IN_RD_LIM_CONF1 ; 
 int /*<<< orphan*/  REG_A4XX_VBIF_IN_WR_LIM_CONF0 ; 
 int /*<<< orphan*/  REG_A4XX_VBIF_IN_WR_LIM_CONF1 ; 
 int /*<<< orphan*/  REG_A4XX_VBIF_ROUND_ROBIN_QOS_ARB ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 
 scalar_t__ FUNC4 (struct msm_gpu*) ; 
 int FUNC5 (struct msm_gpu*) ; 
 scalar_t__ FUNC6 (struct adreno_gpu*) ; 
 scalar_t__ FUNC7 (struct adreno_gpu*) ; 
 unsigned int FUNC8 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 struct a4xx_gpu* FUNC10 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC11 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC12(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC11(gpu);
	struct a4xx_gpu *a4xx_gpu = FUNC10(adreno_gpu);
	uint32_t *ptr, len;
	int i, ret;

	if (FUNC6(adreno_gpu)) {
		FUNC9(gpu, REG_A4XX_VBIF_ABIT_SORT, 0x0001001F);
		FUNC9(gpu, REG_A4XX_VBIF_ABIT_SORT_CONF, 0x000000A4);
		FUNC9(gpu, REG_A4XX_VBIF_GATE_OFF_WRREQ_EN, 0x00000001);
		FUNC9(gpu, REG_A4XX_VBIF_IN_RD_LIM_CONF0, 0x18181818);
		FUNC9(gpu, REG_A4XX_VBIF_IN_RD_LIM_CONF1, 0x00000018);
		FUNC9(gpu, REG_A4XX_VBIF_IN_WR_LIM_CONF0, 0x18181818);
		FUNC9(gpu, REG_A4XX_VBIF_IN_WR_LIM_CONF1, 0x00000018);
		FUNC9(gpu, REG_A4XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x00000003);
	} else if (FUNC7(adreno_gpu)) {
		FUNC9(gpu, REG_A4XX_VBIF_GATE_OFF_WRREQ_EN, 0x00000001);
		FUNC9(gpu, REG_A4XX_VBIF_IN_RD_LIM_CONF0, 0x18181818);
		FUNC9(gpu, REG_A4XX_VBIF_IN_RD_LIM_CONF1, 0x00000018);
		FUNC9(gpu, REG_A4XX_VBIF_IN_WR_LIM_CONF0, 0x18181818);
		FUNC9(gpu, REG_A4XX_VBIF_IN_WR_LIM_CONF1, 0x00000018);
		FUNC9(gpu, REG_A4XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x00000003);
	} else {
		FUNC0();
	}

	/* Make all blocks contribute to the GPU BUSY perf counter */
	FUNC9(gpu, REG_A4XX_RBBM_GPU_BUSY_MASKED, 0xffffffff);

	/* Tune the hystersis counters for SP and CP idle detection */
	FUNC9(gpu, REG_A4XX_RBBM_SP_HYST_CNT, 0x10);
	FUNC9(gpu, REG_A4XX_RBBM_WAIT_IDLE_CLOCKS_CTL, 0x10);

	if (FUNC7(adreno_gpu)) {
		FUNC9(gpu, REG_A4XX_RBBM_WAIT_IDLE_CLOCKS_CTL2, 0x30);
	}

	 /* Enable the RBBM error reporting bits */
	FUNC9(gpu, REG_A4XX_RBBM_AHB_CTL0, 0x00000001);

	/* Enable AHB error reporting*/
	FUNC9(gpu, REG_A4XX_RBBM_AHB_CTL1, 0xa6ffffff);

	/* Enable power counters*/
	FUNC9(gpu, REG_A4XX_RBBM_RBBM_CTL, 0x00000030);

	/*
	 * Turn on hang detection - this spews a lot of useful information
	 * into the RBBM registers on a hang:
	 */
	FUNC9(gpu, REG_A4XX_RBBM_INTERFACE_HANG_INT_CTL,
			(1 << 30) | 0xFFFF);

	FUNC9(gpu, REG_A4XX_RB_GMEM_BASE_ADDR,
			(unsigned int)(a4xx_gpu->ocmem_base >> 14));

	/* Turn on performance counters: */
	FUNC9(gpu, REG_A4XX_RBBM_PERFCTR_CTL, 0x01);

	/* use the first CP counter for timestamp queries.. userspace may set
	 * this as well but it selects the same counter/countable:
	 */
	FUNC9(gpu, REG_A4XX_CP_PERFCTR_CP_SEL_0, CP_ALWAYS_COUNT);

	if (FUNC7(adreno_gpu))
		FUNC9(gpu, REG_A4XX_UCHE_CACHE_WAYS_VFD, 0x07);

	/* Disable L2 bypass to avoid UCHE out of bounds errors */
	FUNC9(gpu, REG_A4XX_UCHE_TRAP_BASE_LO, 0xffff0000);
	FUNC9(gpu, REG_A4XX_UCHE_TRAP_BASE_HI, 0xffff0000);

	FUNC9(gpu, REG_A4XX_CP_DEBUG, (1 << 25) |
			(FUNC6(adreno_gpu) ? (1 << 29) : 0));

	/* On A430 enable SP regfile sleep for power savings */
	/* TODO downstream does this for !420, so maybe applies for 405 too? */
	if (!FUNC6(adreno_gpu)) {
		FUNC9(gpu, REG_A4XX_RBBM_SP_REGFILE_SLEEP_CNTL_0,
			0x00000441);
		FUNC9(gpu, REG_A4XX_RBBM_SP_REGFILE_SLEEP_CNTL_1,
			0x00000441);
	}

	FUNC3(gpu);

	/*
	 * For A420 set RBBM_CLOCK_DELAY_HLSQ.CGC_HLSQ_TP_EARLY_CYC >= 2
	 * due to timing issue with HLSQ_TP_CLK_EN
	 */
	if (FUNC6(adreno_gpu)) {
		unsigned int val;
		val = FUNC8(gpu, REG_A4XX_RBBM_CLOCK_DELAY_HLSQ);
		val &= ~A4XX_CGC_HLSQ_EARLY_CYC__MASK;
		val |= 2 << A4XX_CGC_HLSQ_EARLY_CYC__SHIFT;
		FUNC9(gpu, REG_A4XX_RBBM_CLOCK_DELAY_HLSQ, val);
	}

	/* setup access protection: */
	FUNC9(gpu, REG_A4XX_CP_PROTECT_CTRL, 0x00000007);

	/* RBBM registers */
	FUNC9(gpu, FUNC2(0), 0x62000010);
	FUNC9(gpu, FUNC2(1), 0x63000020);
	FUNC9(gpu, FUNC2(2), 0x64000040);
	FUNC9(gpu, FUNC2(3), 0x65000080);
	FUNC9(gpu, FUNC2(4), 0x66000100);
	FUNC9(gpu, FUNC2(5), 0x64000200);

	/* CP registers */
	FUNC9(gpu, FUNC2(6), 0x67000800);
	FUNC9(gpu, FUNC2(7), 0x64001600);


	/* RB registers */
	FUNC9(gpu, FUNC2(8), 0x60003300);

	/* HLSQ registers */
	FUNC9(gpu, FUNC2(9), 0x60003800);

	/* VPC registers */
	FUNC9(gpu, FUNC2(10), 0x61003980);

	/* SMMU registers */
	FUNC9(gpu, FUNC2(11), 0x6e010000);

	FUNC9(gpu, REG_A4XX_RBBM_INT_0_MASK, A4XX_INT0_MASK);

	ret = FUNC5(gpu);
	if (ret)
		return ret;

	/* Load PM4: */
	ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PM4]->data);
	len = adreno_gpu->fw[ADRENO_FW_PM4]->size / 4;
	FUNC1("loading PM4 ucode version: %u", ptr[0]);
	FUNC9(gpu, REG_A4XX_CP_ME_RAM_WADDR, 0);
	for (i = 1; i < len; i++)
		FUNC9(gpu, REG_A4XX_CP_ME_RAM_DATA, ptr[i]);

	/* Load PFP: */
	ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PFP]->data);
	len = adreno_gpu->fw[ADRENO_FW_PFP]->size / 4;
	FUNC1("loading PFP ucode version: %u", ptr[0]);

	FUNC9(gpu, REG_A4XX_CP_PFP_UCODE_ADDR, 0);
	for (i = 1; i < len; i++)
		FUNC9(gpu, REG_A4XX_CP_PFP_UCODE_DATA, ptr[i]);

	/* clear ME_HALT to start micro engine */
	FUNC9(gpu, REG_A4XX_CP_ME_CNTL, 0);

	return FUNC4(gpu) ? 0 : -EINVAL;
}