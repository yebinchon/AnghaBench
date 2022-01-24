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
struct mmu_rb_node {int /*<<< orphan*/  list; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct mmu_rb_handler {int /*<<< orphan*/  ops_arg; TYPE_1__* ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  root; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (int /*<<< orphan*/ ,struct mmu_rb_node*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmu_rb_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mmu_rb_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct mmu_rb_handler *handler,
			struct mmu_rb_node *node)
{
	unsigned long flags;

	/* Validity of handler and node pointers has been checked by caller. */
	FUNC5(node->addr, node->len);
	FUNC2(&handler->lock, flags);
	FUNC0(node, &handler->root);
	FUNC1(&node->list); /* remove from LRU list */
	FUNC3(&handler->lock, flags);

	handler->ops->remove(handler->ops_arg, node);
}