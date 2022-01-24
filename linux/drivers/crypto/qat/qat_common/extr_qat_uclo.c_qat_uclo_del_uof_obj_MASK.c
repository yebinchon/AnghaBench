#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct icp_qat_uclo_objhandle {unsigned int uimage_num; struct icp_qat_uclo_objhandle* obj_buf; struct icp_qat_uclo_objhandle* obj_hdr; int /*<<< orphan*/ * ae_data; TYPE_1__* ae_uimage; struct icp_qat_uclo_objhandle* uword_buf; } ;
struct icp_qat_fw_loader_handle {struct icp_qat_uclo_objhandle* obj_handle; TYPE_2__* hal_handle; scalar_t__ sobj_handle; } ;
struct TYPE_4__ {unsigned int ae_max_num; } ;
struct TYPE_3__ {struct icp_qat_uclo_objhandle* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icp_qat_uclo_objhandle*) ; 
 int /*<<< orphan*/  FUNC1 (struct icp_qat_fw_loader_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct icp_qat_fw_loader_handle *handle)
{
	struct icp_qat_uclo_objhandle *obj_handle = handle->obj_handle;
	unsigned int a;

	if (handle->sobj_handle)
		FUNC1(handle);
	if (!obj_handle)
		return;

	FUNC0(obj_handle->uword_buf);
	for (a = 0; a < obj_handle->uimage_num; a++)
		FUNC0(obj_handle->ae_uimage[a].page);

	for (a = 0; a < handle->hal_handle->ae_max_num; a++)
		FUNC2(&obj_handle->ae_data[a]);

	FUNC0(obj_handle->obj_hdr);
	FUNC0(obj_handle->obj_buf);
	FUNC0(obj_handle);
	handle->obj_handle = NULL;
}