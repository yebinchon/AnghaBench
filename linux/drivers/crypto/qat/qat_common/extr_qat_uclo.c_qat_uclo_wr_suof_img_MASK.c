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
struct icp_qat_suof_img_hdr {scalar_t__ simg_len; scalar_t__ simg_buf; } ;
struct TYPE_2__ {unsigned int num_simgs; struct icp_qat_suof_img_hdr* simg_hdr; } ;
struct icp_qat_suof_handle {TYPE_1__ img_table; } ;
struct icp_qat_fw_loader_handle {struct icp_qat_suof_handle* sobj_handle; } ;
struct icp_qat_fw_auth_desc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct icp_qat_fw_loader_handle*,struct icp_qat_fw_auth_desc*) ; 
 scalar_t__ FUNC1 (struct icp_qat_fw_loader_handle*,struct icp_qat_fw_auth_desc*) ; 
 scalar_t__ FUNC2 (struct icp_qat_fw_loader_handle*,char*,unsigned int,struct icp_qat_fw_auth_desc**) ; 
 int /*<<< orphan*/  FUNC3 (struct icp_qat_fw_loader_handle*,struct icp_qat_fw_auth_desc**) ; 

__attribute__((used)) static int FUNC4(struct icp_qat_fw_loader_handle *handle)
{
	unsigned int i;
	struct icp_qat_fw_auth_desc *desc = NULL;
	struct icp_qat_suof_handle *sobj_handle = handle->sobj_handle;
	struct icp_qat_suof_img_hdr *simg_hdr = sobj_handle->img_table.simg_hdr;

	for (i = 0; i < sobj_handle->img_table.num_simgs; i++) {
		if (FUNC2(handle,
					 (char *)simg_hdr[i].simg_buf,
					 (unsigned int)
					 (simg_hdr[i].simg_len),
					 &desc))
			goto wr_err;
		if (FUNC0(handle, desc))
			goto wr_err;
		if (FUNC1(handle, desc))
			goto wr_err;
		FUNC3(handle, &desc);
	}
	return 0;
wr_err:
	FUNC3(handle, &desc);
	return -EINVAL;
}