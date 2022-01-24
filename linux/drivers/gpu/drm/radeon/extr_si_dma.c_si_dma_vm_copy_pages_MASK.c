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
typedef  unsigned int uint64_t ;
struct radeon_ib {int* ptr; int /*<<< orphan*/  length_dw; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  DMA_PACKET_COPY ; 
 void* FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 

void FUNC3(struct radeon_device *rdev,
			  struct radeon_ib *ib,
			  uint64_t pe, uint64_t src,
			  unsigned count)
{
	while (count) {
		unsigned bytes = count * 8;
		if (bytes > 0xFFFF8)
			bytes = 0xFFFF8;

		ib->ptr[ib->length_dw++] = FUNC0(DMA_PACKET_COPY,
						      1, 0, 0, bytes);
		ib->ptr[ib->length_dw++] = FUNC1(pe);
		ib->ptr[ib->length_dw++] = FUNC1(src);
		ib->ptr[ib->length_dw++] = FUNC2(pe) & 0xff;
		ib->ptr[ib->length_dw++] = FUNC2(src) & 0xff;

		pe += bytes;
		src += bytes;
		count -= bytes / 8;
	}
}