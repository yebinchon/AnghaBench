#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct icp_qat_uof_objhdr {int dummy; } ;
struct TYPE_8__ {struct icp_qat_uof_objhdr* obj_hdr; scalar_t__ beg_uof; } ;
struct icp_qat_uclo_objhandle {int uword_in_bytes; int prod_rev; unsigned int uimage_num; int /*<<< orphan*/  uword_buf; TYPE_2__* ae_uimage; int /*<<< orphan*/  init_mem_tab; TYPE_4__ encap_uof_obj; int /*<<< orphan*/  str_table; TYPE_3__* obj_hdr; int /*<<< orphan*/  ustore_phy_size; int /*<<< orphan*/  prod_type; } ;
struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; struct icp_qat_uclo_objhandle* obj_handle; } ;
struct TYPE_7__ {scalar_t__ file_buff; } ;
struct TYPE_6__ {int /*<<< orphan*/  page; } ;
struct TYPE_5__ {int revision_id; int /*<<< orphan*/  ae_max_num; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICP_QAT_UCLO_MAX_AE ; 
 int ICP_QAT_UCLO_MAX_CTX ; 
 int /*<<< orphan*/  ICP_QAT_UCLO_MAX_USTORE ; 
 int /*<<< orphan*/  ICP_QAT_UOF_STRT ; 
 int PID_MAJOR_REV ; 
 int PID_MINOR_REV ; 
 int /*<<< orphan*/  UWORD_CPYBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct icp_qat_uclo_objhandle*) ; 
 int /*<<< orphan*/  FUNC4 (struct icp_qat_fw_loader_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct icp_qat_fw_loader_handle*) ; 
 scalar_t__ FUNC6 (struct icp_qat_fw_loader_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (struct icp_qat_uclo_objhandle*,TYPE_2__*,int) ; 
 scalar_t__ FUNC10 (struct icp_qat_fw_loader_handle*) ; 

__attribute__((used)) static int FUNC11(struct icp_qat_fw_loader_handle *handle)
{
	struct icp_qat_uclo_objhandle *obj_handle = handle->obj_handle;
	unsigned int ae;

	obj_handle->encap_uof_obj.beg_uof = obj_handle->obj_hdr->file_buff;
	obj_handle->encap_uof_obj.obj_hdr = (struct icp_qat_uof_objhdr *)
					     obj_handle->obj_hdr->file_buff;
	obj_handle->uword_in_bytes = 6;
	obj_handle->prod_type = FUNC4(handle);
	obj_handle->prod_rev = PID_MAJOR_REV |
			(PID_MINOR_REV & handle->hal_handle->revision_id);
	if (FUNC3(obj_handle)) {
		FUNC2("QAT: UOF incompatible\n");
		return -EINVAL;
	}
	obj_handle->uword_buf = FUNC0(UWORD_CPYBUF_SIZE, sizeof(uint64_t),
					GFP_KERNEL);
	if (!obj_handle->uword_buf)
		return -ENOMEM;
	obj_handle->ustore_phy_size = ICP_QAT_UCLO_MAX_USTORE;
	if (!obj_handle->obj_hdr->file_buff ||
	    !FUNC8(obj_handle->obj_hdr, ICP_QAT_UOF_STRT,
				    &obj_handle->str_table)) {
		FUNC2("QAT: UOF doesn't have effective images\n");
		goto out_err;
	}
	obj_handle->uimage_num =
		FUNC9(obj_handle, obj_handle->ae_uimage,
				    ICP_QAT_UCLO_MAX_AE * ICP_QAT_UCLO_MAX_CTX);
	if (!obj_handle->uimage_num)
		goto out_err;
	if (FUNC6(handle, handle->hal_handle->ae_max_num)) {
		FUNC2("QAT: Bad object\n");
		goto out_check_uof_aemask_err;
	}
	FUNC5(handle);
	FUNC7(&obj_handle->encap_uof_obj,
				   &obj_handle->init_mem_tab);
	if (FUNC10(handle))
		goto out_check_uof_aemask_err;
	return 0;
out_check_uof_aemask_err:
	for (ae = 0; ae < obj_handle->uimage_num; ae++)
		FUNC1(obj_handle->ae_uimage[ae].page);
out_err:
	FUNC1(obj_handle->uword_buf);
	return -EFAULT;
}