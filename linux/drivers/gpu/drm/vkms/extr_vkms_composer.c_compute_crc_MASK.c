#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int x1; int y1; } ;
struct vkms_composer {int offset; int pitch; int cpp; TYPE_1__ src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t FUNC4(void *vaddr_out, struct vkms_composer *composer)
{
	int i, j, src_offset;
	int x_src = composer->src.x1 >> 16;
	int y_src = composer->src.y1 >> 16;
	int h_src = FUNC1(&composer->src) >> 16;
	int w_src = FUNC2(&composer->src) >> 16;
	u32 crc = 0;

	for (i = y_src; i < y_src + h_src; ++i) {
		for (j = x_src; j < x_src + w_src; ++j) {
			src_offset = composer->offset
				     + (i * composer->pitch)
				     + (j * composer->cpp);
			/* XRGB format ignores Alpha channel */
			FUNC3(vaddr_out + src_offset + 24, 0,  8);
			crc = FUNC0(crc, vaddr_out + src_offset,
				       sizeof(u32));
		}
	}

	return crc;
}