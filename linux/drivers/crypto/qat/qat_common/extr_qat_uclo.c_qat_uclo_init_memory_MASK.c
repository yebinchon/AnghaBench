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
struct icp_qat_uof_memvar_attr {int dummy; } ;
struct icp_qat_uof_initmem {int val_attr_num; scalar_t__ num_in_bytes; } ;
struct TYPE_3__ {int entry_num; struct icp_qat_uof_initmem* init_mem; } ;
struct icp_qat_uclo_objhandle {int /*<<< orphan*/ * umem_init_tab; int /*<<< orphan*/ * lm_init_tab; TYPE_1__ init_mem_tab; } ;
struct icp_qat_fw_loader_handle {TYPE_2__* hal_handle; struct icp_qat_uclo_objhandle* obj_handle; } ;
struct TYPE_4__ {int ae_max_num; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct icp_qat_fw_loader_handle*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct icp_qat_fw_loader_handle*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct icp_qat_fw_loader_handle*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct icp_qat_fw_loader_handle*,struct icp_qat_uof_initmem*) ; 

__attribute__((used)) static int FUNC5(struct icp_qat_fw_loader_handle *handle)
{
	int i, ae;
	struct icp_qat_uclo_objhandle *obj_handle = handle->obj_handle;
	struct icp_qat_uof_initmem *initmem = obj_handle->init_mem_tab.init_mem;

	for (i = 0; i < obj_handle->init_mem_tab.entry_num; i++) {
		if (initmem->num_in_bytes) {
			if (FUNC4(handle, initmem))
				return -EINVAL;
		}
		initmem = (struct icp_qat_uof_initmem *)((uintptr_t)(
			(uintptr_t)initmem +
			sizeof(struct icp_qat_uof_initmem)) +
			(sizeof(struct icp_qat_uof_memvar_attr) *
			initmem->val_attr_num));
	}
	for (ae = 0; ae < handle->hal_handle->ae_max_num; ae++) {
		if (FUNC1(handle, ae,
					obj_handle->lm_init_tab[ae])) {
			FUNC0("QAT: fail to batch init lmem for AE %d\n", ae);
			return -EINVAL;
		}
		FUNC3(handle,
						 &obj_handle->lm_init_tab[ae]);
		FUNC2(handle, ae,
				       obj_handle->umem_init_tab[ae]);
		FUNC3(handle,
						 &obj_handle->
						 umem_init_tab[ae]);
	}
	return 0;
}