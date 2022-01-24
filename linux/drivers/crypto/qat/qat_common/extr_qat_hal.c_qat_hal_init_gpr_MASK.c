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
 int EINVAL ; 
 int /*<<< orphan*/  ICP_QAT_UCLO_MAX_CTX ; 
 unsigned short ICP_QAT_UCLO_MAX_GPR_REG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned short,unsigned short*,unsigned char*) ; 
 int FUNC2 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int,unsigned short,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,unsigned long*) ; 

int FUNC4(struct icp_qat_fw_loader_handle *handle,
		     unsigned char ae, unsigned char ctx_mask,
		     enum icp_qat_uof_regtype reg_type,
		     unsigned short reg_num, unsigned int regdata)
{
	int stat = 0;
	unsigned short reg;
	unsigned char ctx = 0;
	enum icp_qat_uof_regtype type;

	if (reg_num >= ICP_QAT_UCLO_MAX_GPR_REG)
		return -EINVAL;

	do {
		if (ctx_mask == 0) {
			FUNC1(handle, ae, reg_num, &reg,
						   &ctx);
			type = reg_type - 1;
		} else {
			reg = reg_num;
			type = reg_type;
			if (!FUNC3(ctx, (unsigned long *)&ctx_mask))
				continue;
		}
		stat = FUNC2(handle, ae, ctx, type, reg, regdata);
		if (stat) {
			FUNC0("QAT: write gpr fail\n");
			return -EINVAL;
		}
	} while (ctx_mask && (ctx++ < ICP_QAT_UCLO_MAX_CTX));

	return 0;
}