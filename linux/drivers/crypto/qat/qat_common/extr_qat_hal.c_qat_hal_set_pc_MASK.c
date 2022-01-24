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
struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned int upc_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTX_STS_INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC1(struct icp_qat_fw_loader_handle *handle,
		    unsigned char ae, unsigned int ctx_mask, unsigned int upc)
{
	FUNC0(handle, ae, ctx_mask, CTX_STS_INDIRECT,
			    handle->hal_handle->upc_mask & upc);
}