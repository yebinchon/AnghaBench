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
struct gc_stat {int dummy; } ;
struct closure {int dummy; } ;
struct btree_op {int dummy; } ;
struct btree {int /*<<< orphan*/  key; TYPE_1__* c; scalar_t__ level; } ;
struct TYPE_2__ {int /*<<< orphan*/  gc_done; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (struct btree*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btree*) ; 
 int /*<<< orphan*/  FUNC3 (struct btree*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct btree*,struct gc_stat*) ; 
 int FUNC6 (struct btree*,struct btree_op*,struct closure*,struct gc_stat*) ; 
 struct btree* FUNC7 (struct btree*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct btree*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct btree*) ; 

__attribute__((used)) static int FUNC10(struct btree *b, struct btree_op *op,
			     struct closure *writes, struct gc_stat *gc)
{
	struct btree *n = NULL;
	int ret = 0;
	bool should_rewrite;

	should_rewrite = FUNC5(b, gc);
	if (should_rewrite) {
		n = FUNC7(b, NULL);

		if (!FUNC0(n)) {
			FUNC2(n);

			FUNC3(n);
			FUNC8(b);
			FUNC9(true, n);

			return -EINTR;
		}
	}

	FUNC1(b->c, b->level + 1, &b->key);

	if (b->level) {
		ret = FUNC6(b, op, writes, gc);
		if (ret)
			return ret;
	}

	FUNC4(&b->c->gc_done, &b->key);

	return ret;
}