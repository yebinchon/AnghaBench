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
struct btree {TYPE_1__* c; int /*<<< orphan*/  key; int /*<<< orphan*/  work; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  bucket_lock; struct btree* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_NODE_dirty ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btree*) ; 
 scalar_t__ FUNC4 (struct btree*) ; 
 scalar_t__ FUNC5 (struct btree*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct btree*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct btree*) ; 
 int /*<<< orphan*/  FUNC12 (struct btree*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct btree *b)
{
	FUNC12(b);

	FUNC0(b == b->c->root);

retry:
	FUNC9(&b->write_lock);
	/*
	 * If the btree node is selected and flushing in btree_flush_write(),
	 * delay and retry until the BTREE_NODE_journal_flush bit cleared,
	 * then it is safe to free the btree node here. Otherwise this btree
	 * node will be in race condition.
	 */
	if (FUNC5(b)) {
		FUNC10(&b->write_lock);
		FUNC11("bnode %p journal_flush set, retry", b);
		FUNC13(1);
		goto retry;
	}

	if (FUNC4(b)) {
		FUNC2(b, FUNC3(b));
		FUNC7(BTREE_NODE_dirty, &b->flags);
	}

	FUNC10(&b->write_lock);

	FUNC6(&b->work);

	FUNC9(&b->c->bucket_lock);
	FUNC1(b->c, &b->key);
	FUNC8(b);
	FUNC10(&b->c->bucket_lock);
}