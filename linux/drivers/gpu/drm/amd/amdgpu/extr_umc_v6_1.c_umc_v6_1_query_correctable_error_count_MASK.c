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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CECC ; 
 int /*<<< orphan*/  EccErrCnt ; 
 int /*<<< orphan*/  EccErrCntCsSel ; 
 int /*<<< orphan*/  ErrorCodeExt ; 
 int /*<<< orphan*/  MCA_UMC_UMC0_MCUMC_STATUST0 ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMC ; 
 int /*<<< orphan*/  UMCCH0_0_EccErrCnt ; 
 int /*<<< orphan*/  UMCCH0_0_EccErrCntSel ; 
 scalar_t__ UMC_V6_1_CE_CNT_INIT ; 
 int /*<<< orphan*/  Val ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  mmMCA_UMC_UMC0_MCUMC_STATUST0 ; 
 int /*<<< orphan*/  mmUMCCH0_0_EccErrCnt ; 
 int /*<<< orphan*/  mmUMCCH0_0_EccErrCntSel ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev,
						   uint32_t umc_reg_offset,
						   unsigned long *error_count)
{
	uint32_t ecc_err_cnt_sel, ecc_err_cnt_sel_addr;
	uint32_t ecc_err_cnt, ecc_err_cnt_addr;
	uint64_t mc_umc_status;
	uint32_t mc_umc_status_addr;

	ecc_err_cnt_sel_addr =
		FUNC4(UMC, 0, mmUMCCH0_0_EccErrCntSel);
	ecc_err_cnt_addr =
		FUNC4(UMC, 0, mmUMCCH0_0_EccErrCnt);
	mc_umc_status_addr =
		FUNC4(UMC, 0, mmMCA_UMC_UMC0_MCUMC_STATUST0);

	/* select the lower chip and check the error count */
	ecc_err_cnt_sel = FUNC2(ecc_err_cnt_sel_addr + umc_reg_offset);
	ecc_err_cnt_sel = FUNC1(ecc_err_cnt_sel, UMCCH0_0_EccErrCntSel,
					EccErrCntCsSel, 0);
	FUNC5(ecc_err_cnt_sel_addr + umc_reg_offset, ecc_err_cnt_sel);
	ecc_err_cnt = FUNC2(ecc_err_cnt_addr + umc_reg_offset);
	*error_count +=
		(FUNC0(ecc_err_cnt, UMCCH0_0_EccErrCnt, EccErrCnt) -
		 UMC_V6_1_CE_CNT_INIT);
	/* clear the lower chip err count */
	FUNC5(ecc_err_cnt_addr + umc_reg_offset, UMC_V6_1_CE_CNT_INIT);

	/* select the higher chip and check the err counter */
	ecc_err_cnt_sel = FUNC1(ecc_err_cnt_sel, UMCCH0_0_EccErrCntSel,
					EccErrCntCsSel, 1);
	FUNC5(ecc_err_cnt_sel_addr + umc_reg_offset, ecc_err_cnt_sel);
	ecc_err_cnt = FUNC2(ecc_err_cnt_addr + umc_reg_offset);
	*error_count +=
		(FUNC0(ecc_err_cnt, UMCCH0_0_EccErrCnt, EccErrCnt) -
		 UMC_V6_1_CE_CNT_INIT);
	/* clear the higher chip err count */
	FUNC5(ecc_err_cnt_addr + umc_reg_offset, UMC_V6_1_CE_CNT_INIT);

	/* check for SRAM correctable error
	  MCUMC_STATUS is a 64 bit register */
	mc_umc_status = FUNC3(mc_umc_status_addr + umc_reg_offset);
	if (FUNC0(mc_umc_status, MCA_UMC_UMC0_MCUMC_STATUST0, ErrorCodeExt) == 6 &&
	    FUNC0(mc_umc_status, MCA_UMC_UMC0_MCUMC_STATUST0, Val) == 1 &&
	    FUNC0(mc_umc_status, MCA_UMC_UMC0_MCUMC_STATUST0, CECC) == 1)
		*error_count += 1;
}