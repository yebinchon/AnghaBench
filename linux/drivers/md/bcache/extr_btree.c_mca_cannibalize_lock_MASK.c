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
struct task_struct {int dummy; } ;
struct cache_set {int /*<<< orphan*/  btree_cache_wait; int /*<<< orphan*/  btree_cache_alloc_lock; } ;
struct btree_op {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cache_set *c, struct btree_op *op)
{
	struct task_struct *old;

	old = FUNC0(&c->btree_cache_alloc_lock, NULL, current);
	if (old && old != current) {
		if (op)
			FUNC1(&c->btree_cache_wait, &op->wait,
					TASK_UNINTERRUPTIBLE);
		return -EINTR;
	}

	return 0;
}