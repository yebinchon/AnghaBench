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
struct btree_op {int dummy; } ;
struct btree {int /*<<< orphan*/  write_lock; int /*<<< orphan*/  key; TYPE_1__* c; int /*<<< orphan*/  keys; int /*<<< orphan*/  parent; int /*<<< orphan*/  level; } ;
struct TYPE_2__ {int /*<<< orphan*/  sort; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btree*) ; 
 struct btree* FUNC1 (TYPE_1__*,struct btree_op*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct btree *FUNC6(struct btree *b,
						  struct btree_op *op)
{
	struct btree *n = FUNC1(b->c, op, b->level, b->parent);

	if (!FUNC0(n)) {
		FUNC4(&n->write_lock);
		FUNC2(&b->keys, &n->keys, &b->c->sort);
		FUNC3(&n->key, &b->key);
		FUNC5(&n->write_lock);
	}

	return n;
}