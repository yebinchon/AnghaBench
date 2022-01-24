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
struct mv_xor_v2_device {int dummy; } ;
struct mv_xor_v2_descriptor {int* data_buff_addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mv_xor_v2_device *xor_dev,
					struct mv_xor_v2_descriptor *desc,
					dma_addr_t src, int index)
{
	int arr_index = ((index >> 1) * 3);

	/*
	 * Fill the buffer's addresses to the descriptor.
	 *
	 * The format of the buffers address for 2 sequential buffers
	 * X and X + 1:
	 *
	 *  First word:  Buffer-DX-Address-Low[31:0]
	 *  Second word: Buffer-DX+1-Address-Low[31:0]
	 *  Third word:  DX+1-Buffer-Address-High[47:32] [31:16]
	 *		 DX-Buffer-Address-High[47:32] [15:0]
	 */
	if ((index & 0x1) == 0) {
		desc->data_buff_addr[arr_index] = FUNC0(src);

		desc->data_buff_addr[arr_index + 2] &= ~0xFFFF;
		desc->data_buff_addr[arr_index + 2] |=
			FUNC1(src) & 0xFFFF;
	} else {
		desc->data_buff_addr[arr_index + 1] =
			FUNC0(src);

		desc->data_buff_addr[arr_index + 2] &= ~0xFFFF0000;
		desc->data_buff_addr[arr_index + 2] |=
			(FUNC1(src) & 0xFFFF) << 16;
	}
}