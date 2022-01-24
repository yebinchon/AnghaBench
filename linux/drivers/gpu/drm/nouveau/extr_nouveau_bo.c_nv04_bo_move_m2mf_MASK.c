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
typedef  int u32 ;
struct ttm_mem_reg {int start; int num_pages; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NV_MEMORY_TO_MEMORY_FORMAT_DMA_SOURCE ; 
 int /*<<< orphan*/  NV_MEMORY_TO_MEMORY_FORMAT_NOP ; 
 int /*<<< orphan*/  NV_MEMORY_TO_MEMORY_FORMAT_OFFSET_IN ; 
 int /*<<< orphan*/  NvSubCopy ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC2 (struct nouveau_channel*,int) ; 
 int FUNC3 (struct ttm_buffer_object*,struct nouveau_channel*,struct ttm_mem_reg*) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_channel *chan, struct ttm_buffer_object *bo,
		  struct ttm_mem_reg *old_reg, struct ttm_mem_reg *new_reg)
{
	u32 src_offset = old_reg->start << PAGE_SHIFT;
	u32 dst_offset = new_reg->start << PAGE_SHIFT;
	u32 page_count = new_reg->num_pages;
	int ret;

	ret = FUNC2(chan, 3);
	if (ret)
		return ret;

	FUNC0(chan, NvSubCopy, NV_MEMORY_TO_MEMORY_FORMAT_DMA_SOURCE, 2);
	FUNC1  (chan, FUNC3(bo, chan, old_reg));
	FUNC1  (chan, FUNC3(bo, chan, new_reg));

	page_count = new_reg->num_pages;
	while (page_count) {
		int line_count = (page_count > 2047) ? 2047 : page_count;

		ret = FUNC2(chan, 11);
		if (ret)
			return ret;

		FUNC0(chan, NvSubCopy,
				 NV_MEMORY_TO_MEMORY_FORMAT_OFFSET_IN, 8);
		FUNC1  (chan, src_offset);
		FUNC1  (chan, dst_offset);
		FUNC1  (chan, PAGE_SIZE); /* src_pitch */
		FUNC1  (chan, PAGE_SIZE); /* dst_pitch */
		FUNC1  (chan, PAGE_SIZE); /* line_length */
		FUNC1  (chan, line_count);
		FUNC1  (chan, 0x00000101);
		FUNC1  (chan, 0x00000000);
		FUNC0(chan, NvSubCopy, NV_MEMORY_TO_MEMORY_FORMAT_NOP, 1);
		FUNC1  (chan, 0);

		page_count -= line_count;
		src_offset += (PAGE_SIZE * line_count);
		dst_offset += (PAGE_SIZE * line_count);
	}

	return 0;
}