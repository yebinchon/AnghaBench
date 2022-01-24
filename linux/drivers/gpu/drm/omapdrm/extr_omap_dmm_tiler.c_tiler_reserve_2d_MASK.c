#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct tiler_block {int fmt; int /*<<< orphan*/  alloc_node; int /*<<< orphan*/  area; } ;
typedef  enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;
struct TYPE_4__ {scalar_t__ slot_w; scalar_t__ slot_h; scalar_t__ cpp; } ;
struct TYPE_3__ {int /*<<< orphan*/  alloc_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct tiler_block* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * containers ; 
 TYPE_2__* geom ; 
 int /*<<< orphan*/  FUNC4 (struct tiler_block*) ; 
 struct tiler_block* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 TYPE_1__* omap_dmm ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

struct tiler_block *FUNC12(enum tiler_fmt fmt, u16 w,
		u16 h, u16 align)
{
	struct tiler_block *block;
	u32 min_align = 128;
	int ret;
	unsigned long flags;
	u32 slot_bytes;

	block = FUNC5(sizeof(*block), GFP_KERNEL);
	if (!block)
		return FUNC3(-ENOMEM);

	FUNC1(!FUNC11(fmt));

	/* convert width/height to slots */
	w = FUNC2(w, geom[fmt].slot_w);
	h = FUNC2(h, geom[fmt].slot_h);

	/* convert alignment to slots */
	slot_bytes = geom[fmt].slot_w * geom[fmt].cpp;
	min_align = FUNC7(min_align, slot_bytes);
	align = (align > min_align) ? FUNC0(align, min_align) : min_align;
	align /= slot_bytes;

	block->fmt = fmt;

	ret = FUNC10(containers[fmt], w, h, align, -1, slot_bytes,
			&block->area);
	if (ret) {
		FUNC4(block);
		return FUNC3(-ENOMEM);
	}

	/* add to allocation list */
	FUNC8(&list_lock, flags);
	FUNC6(&block->alloc_node, &omap_dmm->alloc_head);
	FUNC9(&list_lock, flags);

	return block;
}