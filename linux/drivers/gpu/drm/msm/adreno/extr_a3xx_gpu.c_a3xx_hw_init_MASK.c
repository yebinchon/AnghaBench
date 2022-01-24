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
struct msm_gpu_perfcntr {int select_val; int /*<<< orphan*/  select_reg; } ;
struct msm_gpu {int name; int num_perfcntrs; struct msm_gpu_perfcntr* perfcntrs; } ;
struct adreno_gpu {TYPE_1__** fw; } ;
struct a3xx_gpu {int ocmem_base; scalar_t__ ocmem_hdl; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;

/* Variables and functions */
 int A3XX_INT0_MASK ; 
 size_t ADRENO_FW_PFP ; 
 size_t ADRENO_FW_PM4 ; 
 int AXXX_CP_DEBUG_DYNAMIC_CLK_DISABLE ; 
 int AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_A3XX_CP_PFP_UCODE_ADDR ; 
 int /*<<< orphan*/  REG_A3XX_CP_PFP_UCODE_DATA ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  REG_A3XX_CP_PROTECT_CTRL ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_AHB_CTL0 ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_AHB_CTL1 ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_CLOCK_CTL ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_GPR0_CTL ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_GPU_BUSY_MASKED ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_INTERFACE_HANG_INT_CTL ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_INT_0_MASK ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_PERFCTR_CTL ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_RBBM_CTL ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_SP_HYST_CNT ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_WAIT_IDLE_CLOCKS_CTL ; 
 int /*<<< orphan*/  REG_A3XX_RB_GMEM_BASE_ADDR ; 
 int /*<<< orphan*/  REG_A3XX_UCHE_CACHE_MODE_CONTROL_REG ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_ABIT_SORT ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_ABIT_SORT_CONF ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_ARB_CTL ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_CLKON ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_DDR_OUT_MAX_BURST ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_GATE_OFF_WRREQ_EN ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_IN_RD_LIM_CONF0 ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_IN_RD_LIM_CONF1 ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_IN_WR_LIM_CONF0 ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_IN_WR_LIM_CONF1 ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_OUT_AXI_AOOO ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_OUT_AXI_AOOO_EN ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_OUT_RD_LIM_CONF0 ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_OUT_WR_LIM_CONF0 ; 
 int /*<<< orphan*/  REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB ; 
 int /*<<< orphan*/  REG_AXXX_CP_DEBUG ; 
 int /*<<< orphan*/  REG_AXXX_CP_ME_CNTL ; 
 int /*<<< orphan*/  REG_AXXX_CP_ME_RAM_DATA ; 
 int /*<<< orphan*/  REG_AXXX_CP_ME_RAM_WADDR ; 
 int /*<<< orphan*/  REG_AXXX_CP_QUEUE_THRESHOLDS ; 
 scalar_t__ FUNC6 (struct msm_gpu*) ; 
 int FUNC7 (struct msm_gpu*) ; 
 scalar_t__ FUNC8 (struct adreno_gpu*) ; 
 scalar_t__ FUNC9 (struct adreno_gpu*) ; 
 scalar_t__ FUNC10 (struct adreno_gpu*) ; 
 scalar_t__ FUNC11 (struct adreno_gpu*) ; 
 scalar_t__ FUNC12 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 struct a3xx_gpu* FUNC14 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC15 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC16(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC15(gpu);
	struct a3xx_gpu *a3xx_gpu = FUNC14(adreno_gpu);
	uint32_t *ptr, len;
	int i, ret;

	FUNC4("%s", gpu->name);

	if (FUNC8(adreno_gpu)) {
		/* Set up 16 deep read/write request queues: */
		FUNC13(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF0, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF1, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_RD_LIM_CONF0, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_WR_LIM_CONF0, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_DDR_OUT_MAX_BURST, 0x0000303);
		FUNC13(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF0, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF1, 0x10101010);
		/* Enable WR-REQ: */
		FUNC13(gpu, REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, 0x0000ff);
		/* Set up round robin arbitration between both AXI ports: */
		FUNC13(gpu, REG_A3XX_VBIF_ARB_CTL, 0x00000030);
		/* Set up AOOO: */
		FUNC13(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO_EN, 0x0000003c);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO, 0x003c003c);
	} else if (FUNC9(adreno_gpu)) {
		FUNC13(gpu, REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x0003);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_RD_LIM_CONF0, 0x0000000a);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_WR_LIM_CONF0, 0x0000000a);
	} else if (FUNC10(adreno_gpu)) {
		/* Set up 16 deep read/write request queues: */
		FUNC13(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF0, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF1, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_RD_LIM_CONF0, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_WR_LIM_CONF0, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_DDR_OUT_MAX_BURST, 0x0000303);
		FUNC13(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF0, 0x10101010);
		FUNC13(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF1, 0x10101010);
		/* Enable WR-REQ: */
		FUNC13(gpu, REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, 0x0000ff);
		/* Set up round robin arbitration between both AXI ports: */
		FUNC13(gpu, REG_A3XX_VBIF_ARB_CTL, 0x00000030);
		/* Set up AOOO: */
		FUNC13(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO_EN, 0x0000003c);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO, 0x003c003c);
		/* Enable 1K sort: */
		FUNC13(gpu, REG_A3XX_VBIF_ABIT_SORT, 0x000000ff);
		FUNC13(gpu, REG_A3XX_VBIF_ABIT_SORT_CONF, 0x000000a4);

	} else if (FUNC12(adreno_gpu)) {
		/*
		 * Most of the VBIF registers on 8974v2 have the correct
		 * values at power on, so we won't modify those if we don't
		 * need to
		 */
		/* Enable 1k sort: */
		FUNC13(gpu, REG_A3XX_VBIF_ABIT_SORT, 0x0001003f);
		FUNC13(gpu, REG_A3XX_VBIF_ABIT_SORT_CONF, 0x000000a4);
		/* Enable WR-REQ: */
		FUNC13(gpu, REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, 0x00003f);
		FUNC13(gpu, REG_A3XX_VBIF_DDR_OUT_MAX_BURST, 0x0000303);
		/* Set up VBIF_ROUND_ROBIN_QOS_ARB: */
		FUNC13(gpu, REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x0003);

	} else if (FUNC11(adreno_gpu)) {
		/* Set up 16 deep read/write request queues: */
		FUNC13(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF0, 0x18181818);
		FUNC13(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF1, 0x18181818);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_RD_LIM_CONF0, 0x18181818);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_WR_LIM_CONF0, 0x18181818);
		FUNC13(gpu, REG_A3XX_VBIF_DDR_OUT_MAX_BURST, 0x0000303);
		FUNC13(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF0, 0x18181818);
		FUNC13(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF1, 0x18181818);
		/* Enable WR-REQ: */
		FUNC13(gpu, REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, 0x00003f);
		/* Set up round robin arbitration between both AXI ports: */
		FUNC13(gpu, REG_A3XX_VBIF_ARB_CTL, 0x00000030);
		/* Set up VBIF_ROUND_ROBIN_QOS_ARB: */
		FUNC13(gpu, REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x0001);
		/* Set up AOOO: */
		FUNC13(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO_EN, 0x0000003f);
		FUNC13(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO, 0x003f003f);
		/* Enable 1K sort: */
		FUNC13(gpu, REG_A3XX_VBIF_ABIT_SORT, 0x0001003f);
		FUNC13(gpu, REG_A3XX_VBIF_ABIT_SORT_CONF, 0x000000a4);
		/* Disable VBIF clock gating. This is to enable AXI running
		 * higher frequency than GPU:
		 */
		FUNC13(gpu, REG_A3XX_VBIF_CLKON, 0x00000001);

	} else {
		FUNC3();
	}

	/* Make all blocks contribute to the GPU BUSY perf counter: */
	FUNC13(gpu, REG_A3XX_RBBM_GPU_BUSY_MASKED, 0xffffffff);

	/* Tune the hystersis counters for SP and CP idle detection: */
	FUNC13(gpu, REG_A3XX_RBBM_SP_HYST_CNT, 0x10);
	FUNC13(gpu, REG_A3XX_RBBM_WAIT_IDLE_CLOCKS_CTL, 0x10);

	/* Enable the RBBM error reporting bits.  This lets us get
	 * useful information on failure:
	 */
	FUNC13(gpu, REG_A3XX_RBBM_AHB_CTL0, 0x00000001);

	/* Enable AHB error reporting: */
	FUNC13(gpu, REG_A3XX_RBBM_AHB_CTL1, 0xa6ffffff);

	/* Turn on the power counters: */
	FUNC13(gpu, REG_A3XX_RBBM_RBBM_CTL, 0x00030000);

	/* Turn on hang detection - this spews a lot of useful information
	 * into the RBBM registers on a hang:
	 */
	FUNC13(gpu, REG_A3XX_RBBM_INTERFACE_HANG_INT_CTL, 0x00010fff);

	/* Enable 64-byte cacheline size. HW Default is 32-byte (0x000000E0): */
	FUNC13(gpu, REG_A3XX_UCHE_CACHE_MODE_CONTROL_REG, 0x00000001);

	/* Enable Clock gating: */
	if (FUNC9(adreno_gpu))
		FUNC13(gpu, REG_A3XX_RBBM_CLOCK_CTL, 0xaaaaaaaa);
	else if (FUNC10(adreno_gpu))
		FUNC13(gpu, REG_A3XX_RBBM_CLOCK_CTL, 0xbfffffff);
	else if (FUNC12(adreno_gpu))
		FUNC13(gpu, REG_A3XX_RBBM_CLOCK_CTL, 0xaaaaaaaa);
	else if (FUNC11(adreno_gpu))
		FUNC13(gpu, REG_A3XX_RBBM_CLOCK_CTL, 0xbffcffff);

	if (FUNC12(adreno_gpu))
		FUNC13(gpu, REG_A3XX_RBBM_GPR0_CTL, 0x05515455);
	else if (FUNC11(adreno_gpu))
		FUNC13(gpu, REG_A3XX_RBBM_GPR0_CTL, 0x00000000);

	/* Set the OCMEM base address for A330, etc */
	if (a3xx_gpu->ocmem_hdl) {
		FUNC13(gpu, REG_A3XX_RB_GMEM_BASE_ADDR,
			(unsigned int)(a3xx_gpu->ocmem_base >> 14));
	}

	/* Turn on performance counters: */
	FUNC13(gpu, REG_A3XX_RBBM_PERFCTR_CTL, 0x01);

	/* Enable the perfcntrs that we use.. */
	for (i = 0; i < gpu->num_perfcntrs; i++) {
		const struct msm_gpu_perfcntr *perfcntr = &gpu->perfcntrs[i];
		FUNC13(gpu, perfcntr->select_reg, perfcntr->select_val);
	}

	FUNC13(gpu, REG_A3XX_RBBM_INT_0_MASK, A3XX_INT0_MASK);

	ret = FUNC7(gpu);
	if (ret)
		return ret;

	/* setup access protection: */
	FUNC13(gpu, REG_A3XX_CP_PROTECT_CTRL, 0x00000007);

	/* RBBM registers */
	FUNC13(gpu, FUNC5(0), 0x63000040);
	FUNC13(gpu, FUNC5(1), 0x62000080);
	FUNC13(gpu, FUNC5(2), 0x600000cc);
	FUNC13(gpu, FUNC5(3), 0x60000108);
	FUNC13(gpu, FUNC5(4), 0x64000140);
	FUNC13(gpu, FUNC5(5), 0x66000400);

	/* CP registers */
	FUNC13(gpu, FUNC5(6), 0x65000700);
	FUNC13(gpu, FUNC5(7), 0x610007d8);
	FUNC13(gpu, FUNC5(8), 0x620007e0);
	FUNC13(gpu, FUNC5(9), 0x61001178);
	FUNC13(gpu, FUNC5(10), 0x64001180);

	/* RB registers */
	FUNC13(gpu, FUNC5(11), 0x60003300);

	/* VBIF registers */
	FUNC13(gpu, FUNC5(12), 0x6b00c000);

	/* NOTE: PM4/micro-engine firmware registers look to be the same
	 * for a2xx and a3xx.. we could possibly push that part down to
	 * adreno_gpu base class.  Or push both PM4 and PFP but
	 * parameterize the pfp ucode addr/data registers..
	 */

	/* Load PM4: */
	ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PM4]->data);
	len = adreno_gpu->fw[ADRENO_FW_PM4]->size / 4;
	FUNC4("loading PM4 ucode version: %x", ptr[1]);

	FUNC13(gpu, REG_AXXX_CP_DEBUG,
			AXXX_CP_DEBUG_DYNAMIC_CLK_DISABLE |
			AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE);
	FUNC13(gpu, REG_AXXX_CP_ME_RAM_WADDR, 0);
	for (i = 1; i < len; i++)
		FUNC13(gpu, REG_AXXX_CP_ME_RAM_DATA, ptr[i]);

	/* Load PFP: */
	ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PFP]->data);
	len = adreno_gpu->fw[ADRENO_FW_PFP]->size / 4;
	FUNC4("loading PFP ucode version: %x", ptr[5]);

	FUNC13(gpu, REG_A3XX_CP_PFP_UCODE_ADDR, 0);
	for (i = 1; i < len; i++)
		FUNC13(gpu, REG_A3XX_CP_PFP_UCODE_DATA, ptr[i]);

	/* CP ROQ queue sizes (bytes) - RB:16, ST:16, IB1:32, IB2:64 */
	if (FUNC8(adreno_gpu) || FUNC9(adreno_gpu) ||
			FUNC10(adreno_gpu)) {
		FUNC13(gpu, REG_AXXX_CP_QUEUE_THRESHOLDS,
				FUNC0(2) |
				FUNC1(6) |
				FUNC2(14));
	} else if (FUNC11(adreno_gpu)) {
		/* NOTE: this (value take from downstream android driver)
		 * includes some bits outside of the known bitfields.  But
		 * A330 has this "MERCIU queue" thing too, which might
		 * explain a new bitfield or reshuffling:
		 */
		FUNC13(gpu, REG_AXXX_CP_QUEUE_THRESHOLDS, 0x003e2008);
	}

	/* clear ME_HALT to start micro engine */
	FUNC13(gpu, REG_AXXX_CP_ME_CNTL, 0);

	return FUNC6(gpu) ? 0 : -EINVAL;
}