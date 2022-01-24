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
 unsigned int CSR_RETRY_TIMES ; 
 int FUNC0 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int) ; 
 int LCS_STATUS ; 
 unsigned int LOCAL_CSR_STATUS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct icp_qat_fw_loader_handle *handle,
			     unsigned char ae, unsigned int csr)
{
	unsigned int iterations = CSR_RETRY_TIMES;
	int value;

	do {
		value = FUNC0(handle, ae, csr);
		if (!(FUNC0(handle, ae, LOCAL_CSR_STATUS) & LCS_STATUS))
			return value;
	} while (iterations--);

	FUNC1("QAT: Read CSR timeout\n");
	return 0;
}