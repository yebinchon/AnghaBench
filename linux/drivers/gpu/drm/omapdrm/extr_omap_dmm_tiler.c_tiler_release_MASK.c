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
struct TYPE_3__ {scalar_t__ tcm; } ;
struct tiler_block {int /*<<< orphan*/  alloc_node; TYPE_1__ area; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tiler_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 TYPE_2__* omap_dmm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (TYPE_1__*) ; 

int FUNC6(struct tiler_block *block)
{
	int ret = FUNC5(&block->area);
	unsigned long flags;

	if (block->area.tcm)
		FUNC0(omap_dmm->dev, "failed to release block\n");

	FUNC3(&list_lock, flags);
	FUNC2(&block->alloc_node);
	FUNC4(&list_lock, flags);

	FUNC1(block);
	return ret;
}