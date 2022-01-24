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
struct tiler_block {size_t fmt; int /*<<< orphan*/  alloc_node; int /*<<< orphan*/  area; } ;
struct TYPE_2__ {int /*<<< orphan*/  alloc_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tiler_block* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 size_t TILFMT_PAGE ; 
 int /*<<< orphan*/ * containers ; 
 int /*<<< orphan*/  FUNC1 (struct tiler_block*) ; 
 struct tiler_block* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 TYPE_1__* omap_dmm ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

struct tiler_block *FUNC7(size_t size)
{
	struct tiler_block *block = FUNC2(sizeof(*block), GFP_KERNEL);
	int num_pages = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
	unsigned long flags;

	if (!block)
		return FUNC0(-ENOMEM);

	block->fmt = TILFMT_PAGE;

	if (FUNC6(containers[TILFMT_PAGE], num_pages,
				&block->area)) {
		FUNC1(block);
		return FUNC0(-ENOMEM);
	}

	FUNC4(&list_lock, flags);
	FUNC3(&block->alloc_node, &omap_dmm->alloc_head);
	FUNC5(&list_lock, flags);

	return block;
}