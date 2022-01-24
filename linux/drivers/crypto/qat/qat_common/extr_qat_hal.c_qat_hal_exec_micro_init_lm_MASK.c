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
typedef  int /*<<< orphan*/  uint64_t ;
struct icp_qat_fw_loader_handle {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  ICP_GPA_REL ; 
 int /*<<< orphan*/  ICP_GPB_REL ; 
 int FUNC0 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int /*<<< orphan*/ *,unsigned int,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct icp_qat_fw_loader_handle *handle,
				      unsigned char ae, unsigned char ctx,
				      int *pfirst_exec, uint64_t *micro_inst,
				      unsigned int inst_num)
{
	int stat = 0;
	unsigned int gpra0 = 0, gpra1 = 0, gpra2 = 0;
	unsigned int gprb0 = 0, gprb1 = 0;

	if (*pfirst_exec) {
		FUNC1(handle, ae, ctx, ICP_GPA_REL, 0, &gpra0);
		FUNC1(handle, ae, ctx, ICP_GPA_REL, 0x1, &gpra1);
		FUNC1(handle, ae, ctx, ICP_GPA_REL, 0x2, &gpra2);
		FUNC1(handle, ae, ctx, ICP_GPB_REL, 0, &gprb0);
		FUNC1(handle, ae, ctx, ICP_GPB_REL, 0x1, &gprb1);
		*pfirst_exec = 0;
	}
	stat = FUNC0(handle, ae, ctx, micro_inst, inst_num, 1,
				       inst_num * 0x5, NULL);
	if (stat != 0)
		return -EFAULT;
	FUNC2(handle, ae, ctx, ICP_GPA_REL, 0, gpra0);
	FUNC2(handle, ae, ctx, ICP_GPA_REL, 0x1, gpra1);
	FUNC2(handle, ae, ctx, ICP_GPA_REL, 0x2, gpra2);
	FUNC2(handle, ae, ctx, ICP_GPB_REL, 0, gprb0);
	FUNC2(handle, ae, ctx, ICP_GPB_REL, 0x1, gprb1);

	return 0;
}