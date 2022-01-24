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
struct mmu_rb_handler {int /*<<< orphan*/  lock; int /*<<< orphan*/  root; int /*<<< orphan*/  ops_arg; TYPE_1__* ops; int /*<<< orphan*/  lru_list; } ;
struct TYPE_2__ {int (* insert ) (int /*<<< orphan*/ ,struct mmu_rb_node*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_rb_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_rb_node*,int /*<<< orphan*/ *) ; 
 struct mmu_rb_node* FUNC2 (struct mmu_rb_handler*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mmu_rb_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct mmu_rb_handler *handler,
		       struct mmu_rb_node *mnode)
{
	struct mmu_rb_node *node;
	unsigned long flags;
	int ret = 0;

	FUNC8(mnode->addr, mnode->len);
	FUNC5(&handler->lock, flags);
	node = FUNC2(handler, mnode->addr, mnode->len);
	if (node) {
		ret = -EINVAL;
		goto unlock;
	}
	FUNC0(mnode, &handler->root);
	FUNC3(&mnode->list, &handler->lru_list);

	ret = handler->ops->insert(handler->ops_arg, mnode);
	if (ret) {
		FUNC1(mnode, &handler->root);
		FUNC4(&mnode->list); /* remove from LRU list */
	}
unlock:
	FUNC6(&handler->lock, flags);
	return ret;
}