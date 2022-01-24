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
struct icp_qat_fw_loader_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icp_qat_fw_loader_handle*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(struct icp_qat_fw_loader_handle *handle,
				      unsigned int addr, unsigned int *val,
				      unsigned int num_in_bytes)
{
	unsigned int outval;
	unsigned char *ptr = (unsigned char *)val;

	while (num_in_bytes) {
		FUNC1(&outval, ptr, 4);
		FUNC0(handle, addr, outval);
		num_in_bytes -= 4;
		ptr += 4;
		addr += 4;
	}
}