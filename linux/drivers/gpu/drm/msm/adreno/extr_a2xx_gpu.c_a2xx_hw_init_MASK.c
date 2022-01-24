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
typedef  int uint32_t ;
struct msm_gpu {int name; TYPE_1__* aspace; } ;
struct adreno_gpu {int gmem; TYPE_2__** fw; } ;
typedef  int dma_addr_t ;
struct TYPE_4__ {int size; scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmu; } ;

/* Variables and functions */
 int A2XX_MH_ARBITER_CONFIG_CP_CLNT_ENABLE ; 
 int FUNC0 (int) ; 
 int A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT_ENABLE ; 
 int A2XX_MH_ARBITER_CONFIG_L1_ARB_ENABLE ; 
 int A2XX_MH_ARBITER_CONFIG_L1_ARB_HOLD_ENABLE ; 
 int FUNC1 (int) ; 
 int A2XX_MH_ARBITER_CONFIG_PA_CLNT_ENABLE ; 
 int A2XX_MH_ARBITER_CONFIG_RB_CLNT_ENABLE ; 
 int FUNC2 (int) ; 
 int A2XX_MH_ARBITER_CONFIG_TC_ARB_HOLD_ENABLE ; 
 int A2XX_MH_ARBITER_CONFIG_TC_CLNT_ENABLE ; 
 int A2XX_MH_ARBITER_CONFIG_TC_REORDER_ENABLE ; 
 int A2XX_MH_ARBITER_CONFIG_VGT_CLNT_ENABLE ; 
 int A2XX_MH_INTERRUPT_MASK_AXI_READ_ERROR ; 
 int A2XX_MH_INTERRUPT_MASK_AXI_WRITE_ERROR ; 
 int A2XX_MH_INTERRUPT_MASK_MMU_PAGE_FAULT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int A2XX_MH_MMU_CONFIG_MMU_ENABLE ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL ; 
 int A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC ; 
 int FUNC14 (int) ; 
 int A2XX_RBBM_INT_CNTL_RDERR_INT_MASK ; 
 size_t ADRENO_FW_PFP ; 
 size_t ADRENO_FW_PM4 ; 
 int AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE ; 
 int AXXX_CP_INT_CNTL_IB1_INT_MASK ; 
 int AXXX_CP_INT_CNTL_IB_ERROR_MASK ; 
 int AXXX_CP_INT_CNTL_OPCODE_ERROR_MASK ; 
 int AXXX_CP_INT_CNTL_PROTECTED_MODE_ERROR_MASK ; 
 int AXXX_CP_INT_CNTL_RB_INT_MASK ; 
 int AXXX_CP_INT_CNTL_RESERVED_BIT_ERROR_MASK ; 
 int AXXX_CP_INT_CNTL_T0_PACKET_IN_IB_MASK ; 
 int AXXX_CP_ME_CNTL_HALT ; 
 int /*<<< orphan*/  BEH_TRAN_RNG ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_A2XX_CP_PFP_UCODE_ADDR ; 
 int /*<<< orphan*/  REG_A2XX_CP_PFP_UCODE_DATA ; 
 int /*<<< orphan*/  REG_A2XX_MH_ARBITER_CONFIG ; 
 int /*<<< orphan*/  REG_A2XX_MH_CLNT_INTF_CTRL_CONFIG1 ; 
 int /*<<< orphan*/  REG_A2XX_MH_INTERRUPT_MASK ; 
 int /*<<< orphan*/  REG_A2XX_MH_MMU_CONFIG ; 
 int /*<<< orphan*/  REG_A2XX_MH_MMU_INVALIDATE ; 
 int /*<<< orphan*/  REG_A2XX_MH_MMU_MPU_BASE ; 
 int /*<<< orphan*/  REG_A2XX_MH_MMU_MPU_END ; 
 int /*<<< orphan*/  REG_A2XX_MH_MMU_PT_BASE ; 
 int /*<<< orphan*/  REG_A2XX_MH_MMU_TRAN_ERROR ; 
 int /*<<< orphan*/  REG_A2XX_MH_MMU_VA_RANGE ; 
 int /*<<< orphan*/  REG_A2XX_RBBM_CNTL ; 
 int /*<<< orphan*/  REG_A2XX_RBBM_DEBUG ; 
 int /*<<< orphan*/  REG_A2XX_RBBM_INT_CNTL ; 
 int /*<<< orphan*/  REG_A2XX_RBBM_PM_OVERRIDE1 ; 
 int /*<<< orphan*/  REG_A2XX_RBBM_PM_OVERRIDE2 ; 
 int /*<<< orphan*/  REG_A2XX_RBBM_SOFT_RESET ; 
 int /*<<< orphan*/  REG_A2XX_RB_EDRAM_INFO ; 
 int /*<<< orphan*/  REG_A2XX_SQ_FLOW_CONTROL ; 
 int /*<<< orphan*/  REG_A2XX_SQ_INT_CNTL ; 
 int /*<<< orphan*/  REG_A2XX_SQ_PS_PROGRAM ; 
 int /*<<< orphan*/  REG_A2XX_SQ_VS_PROGRAM ; 
 int /*<<< orphan*/  REG_AXXX_CP_DEBUG ; 
 int /*<<< orphan*/  REG_AXXX_CP_INT_CNTL ; 
 int /*<<< orphan*/  REG_AXXX_CP_ME_CNTL ; 
 int /*<<< orphan*/  REG_AXXX_CP_ME_RAM_DATA ; 
 int /*<<< orphan*/  REG_AXXX_CP_ME_RAM_WADDR ; 
 int /*<<< orphan*/  REG_AXXX_CP_QUEUE_THRESHOLDS ; 
 int SZ_16K ; 
 int SZ_16M ; 
 scalar_t__ FUNC16 (struct msm_gpu*) ; 
 int FUNC17 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC18 (struct adreno_gpu*) ; 
 scalar_t__ FUNC19 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC20 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int*,int*) ; 
 struct adreno_gpu* FUNC23 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC24(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC23(gpu);
	dma_addr_t pt_base, tran_error;
	uint32_t *ptr, len;
	int i, ret;

	FUNC22(gpu->aspace->mmu, &pt_base, &tran_error);

	FUNC15("%s", gpu->name);

	/* halt ME to avoid ucode upload issues on a20x */
	FUNC20(gpu, REG_AXXX_CP_ME_CNTL, AXXX_CP_ME_CNTL_HALT);

	FUNC20(gpu, REG_A2XX_RBBM_PM_OVERRIDE1, 0xfffffffe);
	FUNC20(gpu, REG_A2XX_RBBM_PM_OVERRIDE2, 0xffffffff);

	/* note: kgsl uses 0x00000001 after first reset on a22x */
	FUNC20(gpu, REG_A2XX_RBBM_SOFT_RESET, 0xffffffff);
	FUNC21(30);
	FUNC20(gpu, REG_A2XX_RBBM_SOFT_RESET, 0x00000000);

	if (FUNC19(adreno_gpu))
		FUNC20(gpu, REG_A2XX_SQ_FLOW_CONTROL, 0x18000000);

	/* note: kgsl uses 0x0000ffff for a20x */
	FUNC20(gpu, REG_A2XX_RBBM_CNTL, 0x00004442);

	/* MPU: physical range */
	FUNC20(gpu, REG_A2XX_MH_MMU_MPU_BASE, 0x00000000);
	FUNC20(gpu, REG_A2XX_MH_MMU_MPU_END, 0xfffff000);

	FUNC20(gpu, REG_A2XX_MH_MMU_CONFIG, A2XX_MH_MMU_CONFIG_MMU_ENABLE |
		FUNC10(BEH_TRAN_RNG) |
		FUNC8(BEH_TRAN_RNG) |
		FUNC3(BEH_TRAN_RNG) |
		FUNC4(BEH_TRAN_RNG) |
		FUNC5(BEH_TRAN_RNG) |
		FUNC6(BEH_TRAN_RNG) |
		FUNC7(BEH_TRAN_RNG) |
		FUNC12(BEH_TRAN_RNG) |
		FUNC13(BEH_TRAN_RNG) |
		FUNC11(BEH_TRAN_RNG) |
		FUNC9(BEH_TRAN_RNG));

	/* same as parameters in adreno_gpu */
	FUNC20(gpu, REG_A2XX_MH_MMU_VA_RANGE, SZ_16M |
		FUNC14(0xfff));

	FUNC20(gpu, REG_A2XX_MH_MMU_PT_BASE, pt_base);
	FUNC20(gpu, REG_A2XX_MH_MMU_TRAN_ERROR, tran_error);

	FUNC20(gpu, REG_A2XX_MH_MMU_INVALIDATE,
		A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL |
		A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC);

	FUNC20(gpu, REG_A2XX_MH_ARBITER_CONFIG,
		FUNC2(16) |
		A2XX_MH_ARBITER_CONFIG_L1_ARB_ENABLE |
		A2XX_MH_ARBITER_CONFIG_L1_ARB_HOLD_ENABLE |
		FUNC1(1) |
		A2XX_MH_ARBITER_CONFIG_TC_REORDER_ENABLE |
		A2XX_MH_ARBITER_CONFIG_TC_ARB_HOLD_ENABLE |
		A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT_ENABLE |
		FUNC0(8) |
		A2XX_MH_ARBITER_CONFIG_CP_CLNT_ENABLE |
		A2XX_MH_ARBITER_CONFIG_VGT_CLNT_ENABLE |
		A2XX_MH_ARBITER_CONFIG_TC_CLNT_ENABLE |
		A2XX_MH_ARBITER_CONFIG_RB_CLNT_ENABLE |
		A2XX_MH_ARBITER_CONFIG_PA_CLNT_ENABLE);
	if (!FUNC18(adreno_gpu))
		FUNC20(gpu, REG_A2XX_MH_CLNT_INTF_CTRL_CONFIG1, 0x00032f07);

	FUNC20(gpu, REG_A2XX_SQ_VS_PROGRAM, 0x00000000);
	FUNC20(gpu, REG_A2XX_SQ_PS_PROGRAM, 0x00000000);

	FUNC20(gpu, REG_A2XX_RBBM_PM_OVERRIDE1, 0); /* 0x200 for msm8960? */
	FUNC20(gpu, REG_A2XX_RBBM_PM_OVERRIDE2, 0); /* 0x80/0x1a0 for a22x? */

	/* note: gsl doesn't set this */
	FUNC20(gpu, REG_A2XX_RBBM_DEBUG, 0x00080000);

	FUNC20(gpu, REG_A2XX_RBBM_INT_CNTL,
		A2XX_RBBM_INT_CNTL_RDERR_INT_MASK);
	FUNC20(gpu, REG_AXXX_CP_INT_CNTL,
		AXXX_CP_INT_CNTL_T0_PACKET_IN_IB_MASK |
		AXXX_CP_INT_CNTL_OPCODE_ERROR_MASK |
		AXXX_CP_INT_CNTL_PROTECTED_MODE_ERROR_MASK |
		AXXX_CP_INT_CNTL_RESERVED_BIT_ERROR_MASK |
		AXXX_CP_INT_CNTL_IB_ERROR_MASK |
		AXXX_CP_INT_CNTL_IB1_INT_MASK |
		AXXX_CP_INT_CNTL_RB_INT_MASK);
	FUNC20(gpu, REG_A2XX_SQ_INT_CNTL, 0);
	FUNC20(gpu, REG_A2XX_MH_INTERRUPT_MASK,
		A2XX_MH_INTERRUPT_MASK_AXI_READ_ERROR |
		A2XX_MH_INTERRUPT_MASK_AXI_WRITE_ERROR |
		A2XX_MH_INTERRUPT_MASK_MMU_PAGE_FAULT);

	for (i = 3; i <= 5; i++)
		if ((SZ_16K << i) == adreno_gpu->gmem)
			break;
	FUNC20(gpu, REG_A2XX_RB_EDRAM_INFO, i);

	ret = FUNC17(gpu);
	if (ret)
		return ret;

	/* NOTE: PM4/micro-engine firmware registers look to be the same
	 * for a2xx and a3xx.. we could possibly push that part down to
	 * adreno_gpu base class.  Or push both PM4 and PFP but
	 * parameterize the pfp ucode addr/data registers..
	 */

	/* Load PM4: */
	ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PM4]->data);
	len = adreno_gpu->fw[ADRENO_FW_PM4]->size / 4;
	FUNC15("loading PM4 ucode version: %x", ptr[1]);

	FUNC20(gpu, REG_AXXX_CP_DEBUG,
			AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE);
	FUNC20(gpu, REG_AXXX_CP_ME_RAM_WADDR, 0);
	for (i = 1; i < len; i++)
		FUNC20(gpu, REG_AXXX_CP_ME_RAM_DATA, ptr[i]);

	/* Load PFP: */
	ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PFP]->data);
	len = adreno_gpu->fw[ADRENO_FW_PFP]->size / 4;
	FUNC15("loading PFP ucode version: %x", ptr[5]);

	FUNC20(gpu, REG_A2XX_CP_PFP_UCODE_ADDR, 0);
	for (i = 1; i < len; i++)
		FUNC20(gpu, REG_A2XX_CP_PFP_UCODE_DATA, ptr[i]);

	FUNC20(gpu, REG_AXXX_CP_QUEUE_THRESHOLDS, 0x000C0804);

	/* clear ME_HALT to start micro engine */
	FUNC20(gpu, REG_AXXX_CP_ME_CNTL, 0);

	return FUNC16(gpu) ? 0 : -EINVAL;
}