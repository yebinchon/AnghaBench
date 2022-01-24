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
struct icp_qat_uof_filehdr {int dummy; } ;
struct icp_qat_uclo_objhandle {struct icp_qat_uclo_objhandle* obj_buf; struct icp_qat_uclo_objhandle* obj_hdr; } ;
struct icp_qat_fw_loader_handle {struct icp_qat_uclo_objhandle* obj_handle; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICP_QAT_UOF_OBJS ; 
 int /*<<< orphan*/  FUNC0 (struct icp_qat_uclo_objhandle*) ; 
 struct icp_qat_uclo_objhandle* FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 struct icp_qat_uclo_objhandle* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct icp_qat_uof_filehdr*) ; 
 struct icp_qat_uclo_objhandle* FUNC5 (char*,struct icp_qat_uof_filehdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct icp_qat_fw_loader_handle*) ; 

__attribute__((used)) static int FUNC7(struct icp_qat_fw_loader_handle *handle,
				void *addr_ptr, int mem_size)
{
	struct icp_qat_uof_filehdr *filehdr;
	struct icp_qat_uclo_objhandle *objhdl;

	objhdl = FUNC2(sizeof(*objhdl), GFP_KERNEL);
	if (!objhdl)
		return -ENOMEM;
	objhdl->obj_buf = FUNC1(addr_ptr, mem_size, GFP_KERNEL);
	if (!objhdl->obj_buf)
		goto out_objbuf_err;
	filehdr = (struct icp_qat_uof_filehdr *)objhdl->obj_buf;
	if (FUNC4(filehdr))
		goto out_objhdr_err;
	objhdl->obj_hdr = FUNC5((char *)objhdl->obj_buf, filehdr,
					     ICP_QAT_UOF_OBJS);
	if (!objhdl->obj_hdr) {
		FUNC3("QAT: object file chunk is null\n");
		goto out_objhdr_err;
	}
	handle->obj_handle = objhdl;
	if (FUNC6(handle))
		goto out_overlay_obj_err;
	return 0;

out_overlay_obj_err:
	handle->obj_handle = NULL;
	FUNC0(objhdl->obj_hdr);
out_objhdr_err:
	FUNC0(objhdl->obj_buf);
out_objbuf_err:
	FUNC0(objhdl);
	return -ENOMEM;
}