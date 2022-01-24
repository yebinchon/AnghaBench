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
struct TYPE_2__ {unsigned int max_ustore; unsigned int upc_mask; } ;

/* Variables and functions */
 unsigned char ACS_ACNO ; 
 int /*<<< orphan*/  ACTIVE_CTX_STATUS ; 
 int /*<<< orphan*/  AE_MISC_CONTROL ; 
 int /*<<< orphan*/  CC_ENABLE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTX_ARB_CNTL ; 
 int /*<<< orphan*/  CTX_ENABLES ; 
 int /*<<< orphan*/  CTX_SIG_EVENTS_ACTIVE ; 
 int /*<<< orphan*/  CTX_SIG_EVENTS_INDIRECT ; 
 int /*<<< orphan*/  CTX_STS_INDIRECT ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUTURE_COUNT_SIGNAL_INDIRECT ; 
 unsigned int IGNORE_W1C_MASK ; 
 int /*<<< orphan*/  INDIRECT_LM_ADDR_0_BYTE_INDEX ; 
 int /*<<< orphan*/  INDIRECT_LM_ADDR_1_BYTE_INDEX ; 
 int /*<<< orphan*/  LM_ADDR_0_INDIRECT ; 
 int /*<<< orphan*/  LM_ADDR_1_INDIRECT ; 
 int MAX_EXEC_INST ; 
 int /*<<< orphan*/  MMC_SHARE_CS_BITPOS ; 
 unsigned int XCWE_VOLUNTARY ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct icp_qat_fw_loader_handle*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC3 (struct icp_qat_fw_loader_handle*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC4 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct icp_qat_fw_loader_handle*,unsigned char,int,unsigned int) ; 
 unsigned int FUNC7 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct icp_qat_fw_loader_handle*,unsigned char,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct icp_qat_fw_loader_handle *handle,
				   unsigned char ae, unsigned char ctx,
				   uint64_t *micro_inst, unsigned int inst_num,
				   int code_off, unsigned int max_cycle,
				   unsigned int *endpc)
{
	uint64_t savuwords[MAX_EXEC_INST];
	unsigned int ind_lm_addr0, ind_lm_addr1;
	unsigned int ind_lm_addr_byte0, ind_lm_addr_byte1;
	unsigned int ind_cnt_sig;
	unsigned int ind_sig, act_sig;
	unsigned int csr_val = 0, newcsr_val;
	unsigned int savctx;
	unsigned int savcc, wakeup_events, savpc;
	unsigned int ctxarb_ctl, ctx_enables;

	if ((inst_num > handle->hal_handle->max_ustore) || !micro_inst) {
		FUNC1("QAT: invalid instruction num %d\n", inst_num);
		return -EINVAL;
	}
	/* save current context */
	ind_lm_addr0 = FUNC8(handle, ae, ctx, LM_ADDR_0_INDIRECT);
	ind_lm_addr1 = FUNC8(handle, ae, ctx, LM_ADDR_1_INDIRECT);
	ind_lm_addr_byte0 = FUNC8(handle, ae, ctx,
						INDIRECT_LM_ADDR_0_BYTE_INDEX);
	ind_lm_addr_byte1 = FUNC8(handle, ae, ctx,
						INDIRECT_LM_ADDR_1_BYTE_INDEX);
	if (inst_num <= MAX_EXEC_INST)
		FUNC4(handle, ae, 0, inst_num, savuwords);
	FUNC5(handle, ae, ctx, &wakeup_events);
	savpc = FUNC8(handle, ae, ctx, CTX_STS_INDIRECT);
	savpc = (savpc & handle->hal_handle->upc_mask) >> 0;
	ctx_enables = FUNC7(handle, ae, CTX_ENABLES);
	ctx_enables &= IGNORE_W1C_MASK;
	savcc = FUNC7(handle, ae, CC_ENABLE);
	savctx = FUNC7(handle, ae, ACTIVE_CTX_STATUS);
	ctxarb_ctl = FUNC7(handle, ae, CTX_ARB_CNTL);
	ind_cnt_sig = FUNC8(handle, ae, ctx,
					  FUTURE_COUNT_SIGNAL_INDIRECT);
	ind_sig = FUNC8(handle, ae, ctx,
				      CTX_SIG_EVENTS_INDIRECT);
	act_sig = FUNC7(handle, ae, CTX_SIG_EVENTS_ACTIVE);
	/* execute micro codes */
	FUNC10(handle, ae, CTX_ENABLES, ctx_enables);
	FUNC12(handle, ae, 0, inst_num, micro_inst);
	FUNC11(handle, ae, (1 << ctx), CTX_STS_INDIRECT, 0);
	FUNC10(handle, ae, ACTIVE_CTX_STATUS, ctx & ACS_ACNO);
	if (code_off)
		FUNC10(handle, ae, CC_ENABLE, savcc & 0xffffdfff);
	FUNC6(handle, ae, (1 << ctx), XCWE_VOLUNTARY);
	FUNC11(handle, ae, (1 << ctx), CTX_SIG_EVENTS_INDIRECT, 0);
	FUNC10(handle, ae, CTX_SIG_EVENTS_ACTIVE, 0);
	FUNC3(handle, ae, (1 << ctx));
	/* wait for micro codes to finish */
	if (FUNC9(handle, ae, max_cycle, 1) != 0)
		return -EFAULT;
	if (endpc) {
		unsigned int ctx_status;

		ctx_status = FUNC8(handle, ae, ctx,
						 CTX_STS_INDIRECT);
		*endpc = ctx_status & handle->hal_handle->upc_mask;
	}
	/* retore to saved context */
	FUNC2(handle, ae, (1 << ctx));
	if (inst_num <= MAX_EXEC_INST)
		FUNC12(handle, ae, 0, inst_num, savuwords);
	FUNC6(handle, ae, (1 << ctx), wakeup_events);
	FUNC11(handle, ae, (1 << ctx), CTX_STS_INDIRECT,
			    handle->hal_handle->upc_mask & savpc);
	csr_val = FUNC7(handle, ae, AE_MISC_CONTROL);
	newcsr_val = FUNC0(csr_val, MMC_SHARE_CS_BITPOS);
	FUNC10(handle, ae, AE_MISC_CONTROL, newcsr_val);
	FUNC10(handle, ae, CC_ENABLE, savcc);
	FUNC10(handle, ae, ACTIVE_CTX_STATUS, savctx & ACS_ACNO);
	FUNC10(handle, ae, CTX_ARB_CNTL, ctxarb_ctl);
	FUNC11(handle, ae, (1 << ctx),
			    LM_ADDR_0_INDIRECT, ind_lm_addr0);
	FUNC11(handle, ae, (1 << ctx),
			    LM_ADDR_1_INDIRECT, ind_lm_addr1);
	FUNC11(handle, ae, (1 << ctx),
			    INDIRECT_LM_ADDR_0_BYTE_INDEX, ind_lm_addr_byte0);
	FUNC11(handle, ae, (1 << ctx),
			    INDIRECT_LM_ADDR_1_BYTE_INDEX, ind_lm_addr_byte1);
	FUNC11(handle, ae, (1 << ctx),
			    FUTURE_COUNT_SIGNAL_INDIRECT, ind_cnt_sig);
	FUNC11(handle, ae, (1 << ctx),
			    CTX_SIG_EVENTS_INDIRECT, ind_sig);
	FUNC10(handle, ae, CTX_SIG_EVENTS_ACTIVE, act_sig);
	FUNC10(handle, ae, CTX_ENABLES, ctx_enables);

	return 0;
}