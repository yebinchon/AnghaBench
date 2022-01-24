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
struct icp_qat_fw_loader_handle {int dummy; } ;
typedef  enum icp_qat_uof_regtype { ____Placeholder_icp_qat_uof_regtype } icp_qat_uof_regtype ;

/* Variables and functions */
 int /*<<< orphan*/  CE_LMADDR_0_GLOBAL_BITPOS ; 
 int /*<<< orphan*/  CE_LMADDR_1_GLOBAL_BITPOS ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTX_ENABLES ; 
 int EINVAL ; 
#define  ICP_LMEM0 129 
#define  ICP_LMEM1 128 
 unsigned int IGNORE_W1C_MASK ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 unsigned int FUNC3 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC5(struct icp_qat_fw_loader_handle *handle,
			   unsigned char ae, enum icp_qat_uof_regtype lm_type,
			   unsigned char mode)
{
	unsigned int csr, new_csr;

	csr = FUNC3(handle, ae, CTX_ENABLES);
	csr &= IGNORE_W1C_MASK;
	switch (lm_type) {
	case ICP_LMEM0:
		new_csr = (mode) ?
			FUNC1(csr, CE_LMADDR_0_GLOBAL_BITPOS) :
			FUNC0(csr, CE_LMADDR_0_GLOBAL_BITPOS);
		break;
	case ICP_LMEM1:
		new_csr = (mode) ?
			FUNC1(csr, CE_LMADDR_1_GLOBAL_BITPOS) :
			FUNC0(csr, CE_LMADDR_1_GLOBAL_BITPOS);
		break;
	default:
		FUNC2("QAT: lmType = 0x%x\n", lm_type);
		return -EINVAL;
	}

	if (new_csr != csr)
		FUNC4(handle, ae, CTX_ENABLES, new_csr);
	return 0;
}