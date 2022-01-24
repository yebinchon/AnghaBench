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
struct icp_qat_fw_loader_handle {int /*<<< orphan*/  fw_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int) ; 

void FUNC1(struct icp_qat_fw_loader_handle *handle, unsigned char ae,
		  unsigned int ctx_mask)
{
	if (!handle->fw_auth)
		FUNC0(handle, ae, ctx_mask);
}