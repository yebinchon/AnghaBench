#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct icp_qat_uclo_objhandle {int uimage_num; TYPE_3__* ae_uimage; } ;
struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; struct icp_qat_uclo_objhandle* obj_handle; } ;
struct TYPE_6__ {TYPE_2__* img_ptr; } ;
struct TYPE_5__ {int /*<<< orphan*/  ae_assigned; } ;
struct TYPE_4__ {int /*<<< orphan*/  ae_mask; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct icp_qat_uclo_objhandle*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC3(struct icp_qat_fw_loader_handle *handle, int max_ae)
{
	int i, ae;
	int mflag = 0;
	struct icp_qat_uclo_objhandle *obj_handle = handle->obj_handle;

	for (ae = 0; ae < max_ae; ae++) {
		if (!FUNC2(ae,
			      (unsigned long *)&handle->hal_handle->ae_mask))
			continue;
		for (i = 0; i < obj_handle->uimage_num; i++) {
			if (!FUNC2(ae, (unsigned long *)
			&obj_handle->ae_uimage[i].img_ptr->ae_assigned))
				continue;
			mflag = 1;
			if (FUNC1(obj_handle, ae, i))
				return -EINVAL;
		}
	}
	if (!mflag) {
		FUNC0("QAT: uimage uses AE not set\n");
		return -EINVAL;
	}
	return 0;
}