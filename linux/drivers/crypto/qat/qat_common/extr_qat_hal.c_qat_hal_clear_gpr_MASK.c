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
typedef  int /*<<< orphan*/  uint64_t ;
struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned char ae_max_num; int upc_mask; } ;

/* Variables and functions */
 unsigned int ACS_ACNO ; 
 int /*<<< orphan*/  ACTIVE_CTX_STATUS ; 
 int /*<<< orphan*/  AE_MISC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CC_ENABLE ; 
 unsigned int CE_NN_MODE ; 
 int /*<<< orphan*/  CTX_ARB_CNTL ; 
 int /*<<< orphan*/  CTX_ENABLES ; 
 int /*<<< orphan*/  CTX_SIG_EVENTS_ACTIVE ; 
 int /*<<< orphan*/  CTX_SIG_EVENTS_INDIRECT ; 
 int /*<<< orphan*/  CTX_STS_INDIRECT ; 
 int EINVAL ; 
 unsigned int ICP_QAT_UCLO_AE_ALL_CTX ; 
 unsigned int IGNORE_W1C_MASK ; 
 unsigned int INIT_CCENABLE_VALUE ; 
 unsigned int INIT_CTX_ARB_VALUE ; 
 unsigned int INIT_CTX_ENABLE_VALUE ; 
 int INIT_PC_VALUE ; 
 int /*<<< orphan*/  INIT_SIG_EVENTS_VALUE ; 
 int /*<<< orphan*/  INIT_WAKEUP_EVENTS_VALUE ; 
 int MAX_RETRY_TIMES ; 
 int MMC_SHARE_CS_BITPOS ; 
 int /*<<< orphan*/  XCWE_VOLUNTARY ; 
 scalar_t__ inst ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct icp_qat_fw_loader_handle*,unsigned char,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct icp_qat_fw_loader_handle *handle)
{
	unsigned char ae;
	unsigned int ctx_mask = ICP_QAT_UCLO_AE_ALL_CTX;
	int times = MAX_RETRY_TIMES;
	unsigned int csr_val = 0;
	unsigned int savctx = 0;
	int ret = 0;

	for (ae = 0; ae < handle->hal_handle->ae_max_num; ae++) {
		csr_val = FUNC6(handle, ae, AE_MISC_CONTROL);
		csr_val &= ~(1 << MMC_SHARE_CS_BITPOS);
		FUNC8(handle, ae, AE_MISC_CONTROL, csr_val);
		csr_val = FUNC6(handle, ae, CTX_ENABLES);
		csr_val &= IGNORE_W1C_MASK;
		csr_val |= CE_NN_MODE;
		FUNC8(handle, ae, CTX_ENABLES, csr_val);
		FUNC10(handle, ae, 0, FUNC0(inst),
				  (uint64_t *)inst);
		FUNC9(handle, ae, ctx_mask, CTX_STS_INDIRECT,
				    handle->hal_handle->upc_mask &
				    INIT_PC_VALUE);
		savctx = FUNC6(handle, ae, ACTIVE_CTX_STATUS);
		FUNC8(handle, ae, ACTIVE_CTX_STATUS, 0);
		FUNC5(handle, ae, ctx_mask, XCWE_VOLUNTARY);
		FUNC9(handle, ae, ctx_mask,
				    CTX_SIG_EVENTS_INDIRECT, 0);
		FUNC8(handle, ae, CTX_SIG_EVENTS_ACTIVE, 0);
		FUNC3(handle, ae, ctx_mask);
	}
	for (ae = 0; ae < handle->hal_handle->ae_max_num; ae++) {
		/* wait for AE to finish */
		do {
			ret = FUNC7(handle, ae, 20, 1);
		} while (ret && times--);

		if (times < 0) {
			FUNC1("QAT: clear GPR of AE %d failed", ae);
			return -EINVAL;
		}
		FUNC2(handle, ae, ctx_mask);
		FUNC8(handle, ae, ACTIVE_CTX_STATUS,
				  savctx & ACS_ACNO);
		FUNC8(handle, ae, CTX_ENABLES,
				  INIT_CTX_ENABLE_VALUE);
		FUNC9(handle, ae, ctx_mask, CTX_STS_INDIRECT,
				    handle->hal_handle->upc_mask &
				    INIT_PC_VALUE);
		FUNC8(handle, ae, CTX_ARB_CNTL, INIT_CTX_ARB_VALUE);
		FUNC8(handle, ae, CC_ENABLE, INIT_CCENABLE_VALUE);
		FUNC5(handle, ae, ctx_mask,
					 INIT_WAKEUP_EVENTS_VALUE);
		FUNC4(handle, ae, ctx_mask,
				      INIT_SIG_EVENTS_VALUE);
	}
	return 0;
}