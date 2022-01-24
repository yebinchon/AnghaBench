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
struct icp_qat_fw_loader_handle {TYPE_1__* pci_dev; scalar_t__ fw_auth; } ;
struct icp_qat_fw_auth_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ device; } ;

/* Variables and functions */
 scalar_t__ ADF_C3XXX_PCI_DEVICE_ID ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct icp_qat_fw_loader_handle*,struct icp_qat_fw_auth_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct icp_qat_fw_loader_handle*,void*,int,struct icp_qat_fw_auth_desc**) ; 
 int /*<<< orphan*/  FUNC3 (struct icp_qat_fw_loader_handle*,struct icp_qat_fw_auth_desc**) ; 
 int /*<<< orphan*/  FUNC4 (struct icp_qat_fw_loader_handle*,int /*<<< orphan*/ ,void*,int) ; 

int FUNC5(struct icp_qat_fw_loader_handle *handle,
		       void *addr_ptr, int mem_size)
{
	struct icp_qat_fw_auth_desc *desc = NULL;
	int status = 0;

	if (handle->fw_auth) {
		if (!FUNC2(handle, addr_ptr, mem_size, &desc))
			status = FUNC1(handle, desc);
		FUNC3(handle, &desc);
	} else {
		if (handle->pci_dev->device == ADF_C3XXX_PCI_DEVICE_ID) {
			FUNC0("QAT: C3XXX doesn't support unsigned MMP\n");
			return -EINVAL;
		}
		FUNC4(handle, 0, addr_ptr, mem_size);
	}
	return status;
}