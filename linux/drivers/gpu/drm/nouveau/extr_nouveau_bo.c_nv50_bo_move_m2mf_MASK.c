#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct ttm_mem_reg {int num_pages; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {int /*<<< orphan*/  kind; TYPE_1__* vma; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_2__ {int addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int NV_MEMORY_TO_MEMORY_FORMAT_NOP ; 
 int /*<<< orphan*/  NvSubCopy ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (struct nouveau_channel*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 struct nouveau_mem* FUNC5 (struct ttm_mem_reg*) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_channel *chan, struct ttm_buffer_object *bo,
		  struct ttm_mem_reg *old_reg, struct ttm_mem_reg *new_reg)
{
	struct nouveau_mem *mem = FUNC5(old_reg);
	u64 length = (new_reg->num_pages << PAGE_SHIFT);
	u64 src_offset = mem->vma[0].addr;
	u64 dst_offset = mem->vma[1].addr;
	int src_tiled = !!mem->kind;
	int dst_tiled = !!FUNC5(new_reg)->kind;
	int ret;

	while (length) {
		u32 amount, stride, height;

		ret = FUNC2(chan, 18 + 6 * (src_tiled + dst_tiled));
		if (ret)
			return ret;

		amount  = FUNC4(length, (u64)(4 * 1024 * 1024));
		stride  = 16 * 4;
		height  = amount / stride;

		if (src_tiled) {
			FUNC0(chan, NvSubCopy, 0x0200, 7);
			FUNC1  (chan, 0);
			FUNC1  (chan, 0);
			FUNC1  (chan, stride);
			FUNC1  (chan, height);
			FUNC1  (chan, 1);
			FUNC1  (chan, 0);
			FUNC1  (chan, 0);
		} else {
			FUNC0(chan, NvSubCopy, 0x0200, 1);
			FUNC1  (chan, 1);
		}
		if (dst_tiled) {
			FUNC0(chan, NvSubCopy, 0x021c, 7);
			FUNC1  (chan, 0);
			FUNC1  (chan, 0);
			FUNC1  (chan, stride);
			FUNC1  (chan, height);
			FUNC1  (chan, 1);
			FUNC1  (chan, 0);
			FUNC1  (chan, 0);
		} else {
			FUNC0(chan, NvSubCopy, 0x021c, 1);
			FUNC1  (chan, 1);
		}

		FUNC0(chan, NvSubCopy, 0x0238, 2);
		FUNC1  (chan, FUNC6(src_offset));
		FUNC1  (chan, FUNC6(dst_offset));
		FUNC0(chan, NvSubCopy, 0x030c, 8);
		FUNC1  (chan, FUNC3(src_offset));
		FUNC1  (chan, FUNC3(dst_offset));
		FUNC1  (chan, stride);
		FUNC1  (chan, stride);
		FUNC1  (chan, stride);
		FUNC1  (chan, height);
		FUNC1  (chan, 0x00000101);
		FUNC1  (chan, 0x00000000);
		FUNC0(chan, NvSubCopy, NV_MEMORY_TO_MEMORY_FORMAT_NOP, 1);
		FUNC1  (chan, 0);

		length -= amount;
		src_offset += amount;
		dst_offset += amount;
	}

	return 0;
}