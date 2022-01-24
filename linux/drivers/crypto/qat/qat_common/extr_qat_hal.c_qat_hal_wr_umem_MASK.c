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
 unsigned int UA_ECS ; 
 int /*<<< orphan*/  USTORE_ADDRESS ; 
 int /*<<< orphan*/  USTORE_DATA_LOWER ; 
 int /*<<< orphan*/  USTORE_DATA_UPPER ; 
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC3(struct icp_qat_fw_loader_handle *handle,
		     unsigned char ae, unsigned int uaddr,
		     unsigned int words_num, unsigned int *data)
{
	unsigned int i, ustore_addr;

	ustore_addr = FUNC1(handle, ae, USTORE_ADDRESS);
	uaddr |= UA_ECS;
	FUNC2(handle, ae, USTORE_ADDRESS, uaddr);
	for (i = 0; i < words_num; i++) {
		unsigned int uwrd_lo, uwrd_hi, tmp;

		uwrd_lo = ((data[i] & 0xfff0000) << 4) | (0x3 << 18) |
			  ((data[i] & 0xff00) << 2) |
			  (0x3 << 8) | (data[i] & 0xff);
		uwrd_hi = (0xf << 4) | ((data[i] & 0xf0000000) >> 28);
		uwrd_hi |= (FUNC0(data[i] & 0xffff) & 0x1) << 8;
		tmp = ((data[i] >> 0x10) & 0xffff);
		uwrd_hi |= (FUNC0(tmp) & 0x1) << 9;
		FUNC2(handle, ae, USTORE_DATA_LOWER, uwrd_lo);
		FUNC2(handle, ae, USTORE_DATA_UPPER, uwrd_hi);
	}
	FUNC2(handle, ae, USTORE_ADDRESS, ustore_addr);
}