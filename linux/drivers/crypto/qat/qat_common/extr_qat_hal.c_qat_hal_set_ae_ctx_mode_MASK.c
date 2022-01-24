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
 int /*<<< orphan*/  CE_INUSE_CONTEXTS_BITPOS ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTX_ENABLES ; 
 int EINVAL ; 
 unsigned int IGNORE_W1C_MASK ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char) ; 
 unsigned int FUNC3 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC5(struct icp_qat_fw_loader_handle *handle,
			    unsigned char ae, unsigned char mode)
{
	unsigned int csr, new_csr;

	if ((mode != 4) && (mode != 8)) {
		FUNC2("QAT: bad ctx mode=%d\n", mode);
		return -EINVAL;
	}

	/* Sets the accelaration engine context mode to either four or eight */
	csr = FUNC3(handle, ae, CTX_ENABLES);
	csr = IGNORE_W1C_MASK & csr;
	new_csr = (mode == 4) ?
		FUNC1(csr, CE_INUSE_CONTEXTS_BITPOS) :
		FUNC0(csr, CE_INUSE_CONTEXTS_BITPOS);
	FUNC4(handle, ae, CTX_ENABLES, new_csr);
	return 0;
}