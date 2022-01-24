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
 int /*<<< orphan*/  CE_NN_MODE_BITPOS ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTX_ENABLES ; 
 unsigned int IGNORE_W1C_MASK ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC4(struct icp_qat_fw_loader_handle *handle,
			   unsigned char ae, unsigned char mode)
{
	unsigned int csr, new_csr;

	csr = FUNC2(handle, ae, CTX_ENABLES);
	csr &= IGNORE_W1C_MASK;

	new_csr = (mode) ?
		FUNC1(csr, CE_NN_MODE_BITPOS) :
		FUNC0(csr, CE_NN_MODE_BITPOS);

	if (new_csr != csr)
		FUNC3(handle, ae, CTX_ENABLES, new_csr);

	return 0;
}