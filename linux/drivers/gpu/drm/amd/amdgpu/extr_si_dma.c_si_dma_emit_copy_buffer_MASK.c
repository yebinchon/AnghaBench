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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ib {int* ptr; int /*<<< orphan*/  length_dw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_COPY ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ib *ib,
				       uint64_t src_offset,
				       uint64_t dst_offset,
				       uint32_t byte_count)
{
	ib->ptr[ib->length_dw++] = FUNC0(DMA_PACKET_COPY,
					      1, 0, 0, byte_count);
	ib->ptr[ib->length_dw++] = FUNC1(dst_offset);
	ib->ptr[ib->length_dw++] = FUNC1(src_offset);
	ib->ptr[ib->length_dw++] = FUNC2(dst_offset) & 0xff;
	ib->ptr[ib->length_dw++] = FUNC2(src_offset) & 0xff;
}