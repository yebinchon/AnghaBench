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

/* Variables and functions */
 unsigned int CE_ENABLE_BITPOS ; 
 int /*<<< orphan*/  CTX_ENABLES ; 
 unsigned int ICP_QAT_UCLO_AE_ALL_CTX ; 
 unsigned int IGNORE_W1C_MASK ; 
 unsigned int FUNC0 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct icp_qat_fw_loader_handle *handle,
				unsigned char ae, unsigned int ctx_mask)
{
	unsigned int ctx;

	ctx = FUNC0(handle, ae, CTX_ENABLES);
	ctx &= IGNORE_W1C_MASK &
		(~((ctx_mask & ICP_QAT_UCLO_AE_ALL_CTX) << CE_ENABLE_BITPOS));
	FUNC1(handle, ae, CTX_ENABLES, ctx);
}