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
struct mmu_rb_node {unsigned long addr; unsigned long len; int /*<<< orphan*/  list; } ;
struct mmu_rb_handler {int /*<<< orphan*/  lock; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmu_rb_node*,int /*<<< orphan*/ *) ; 
 struct mmu_rb_node* FUNC1 (struct mmu_rb_handler*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC5(struct mmu_rb_handler *handler,
				     unsigned long addr, unsigned long len,
				     struct mmu_rb_node **rb_node)
{
	struct mmu_rb_node *node;
	unsigned long flags;
	bool ret = false;

	FUNC3(&handler->lock, flags);
	node = FUNC1(handler, addr, len);
	if (node) {
		if (node->addr == addr && node->len == len)
			goto unlock;
		FUNC0(node, &handler->root);
		FUNC2(&node->list); /* remove from LRU list */
		ret = true;
	}
unlock:
	FUNC4(&handler->lock, flags);
	*rb_node = node;
	return ret;
}