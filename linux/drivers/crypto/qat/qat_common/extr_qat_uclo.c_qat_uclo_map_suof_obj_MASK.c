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
struct icp_qat_suof_handle {int dummy; } ;
struct icp_qat_fw_loader_handle {struct icp_qat_suof_handle* sobj_handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct icp_qat_suof_handle* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct icp_qat_fw_loader_handle*) ; 
 scalar_t__ FUNC3 (struct icp_qat_fw_loader_handle*,void*,int) ; 

__attribute__((used)) static int FUNC4(struct icp_qat_fw_loader_handle *handle,
				 void *addr_ptr, int mem_size)
{
	struct icp_qat_suof_handle *suof_handle;

	suof_handle = FUNC0(sizeof(*suof_handle), GFP_KERNEL);
	if (!suof_handle)
		return -ENOMEM;
	handle->sobj_handle = suof_handle;
	if (FUNC3(handle, addr_ptr, mem_size)) {
		FUNC2(handle);
		FUNC1("QAT: map SUOF failed\n");
		return -EINVAL;
	}
	return 0;
}