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
 int ACS_ABO_BITPOS ; 
 int /*<<< orphan*/  ACTIVE_CTX_STATUS ; 
 int CE_ENABLE_BITPOS ; 
 int /*<<< orphan*/  CTX_ENABLES ; 
 unsigned int FUNC0 (struct icp_qat_fw_loader_handle*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC1(struct icp_qat_fw_loader_handle *handle,
			    unsigned int ae)
{
	unsigned int enable = 0, active = 0;

	enable = FUNC0(handle, ae, CTX_ENABLES);
	active = FUNC0(handle, ae, ACTIVE_CTX_STATUS);
	if ((enable & (0xff << CE_ENABLE_BITPOS)) ||
	    (active & (1 << ACS_ABO_BITPOS)))
		return 1;
	else
		return 0;
}