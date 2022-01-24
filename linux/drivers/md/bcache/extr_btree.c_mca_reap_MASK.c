#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct closure {int dummy; } ;
struct TYPE_6__ {unsigned int page_order; TYPE_2__* set; } ;
struct btree {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  write_lock; TYPE_3__ keys; int /*<<< orphan*/  lock; TYPE_1__* c; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  bucket_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct btree*,struct closure*) ; 
 scalar_t__ FUNC2 (struct btree*) ; 
 scalar_t__ FUNC3 (struct btree*) ; 
 int /*<<< orphan*/  FUNC4 (struct closure*) ; 
 int /*<<< orphan*/  FUNC5 (struct closure*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct btree*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct btree*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct btree *b, unsigned int min_order, bool flush)
{
	struct closure cl;

	FUNC4(&cl);
	FUNC9(&b->c->bucket_lock);

	if (!FUNC8(&b->lock))
		return -ENOMEM;

	FUNC0(FUNC2(b) && !b->keys.set[0].data);

	if (b->keys.page_order < min_order)
		goto out_unlock;

	if (!flush) {
		if (FUNC2(b))
			goto out_unlock;

		if (FUNC7(&b->io_mutex))
			goto out_unlock;
		FUNC15(&b->io_mutex);
	}

retry:
	/*
	 * BTREE_NODE_dirty might be cleared in btree_flush_btree() by
	 * __bch_btree_node_write(). To avoid an extra flush, acquire
	 * b->write_lock before checking BTREE_NODE_dirty bit.
	 */
	FUNC10(&b->write_lock);
	/*
	 * If this btree node is selected in btree_flush_write() by journal
	 * code, delay and retry until the node is flushed by journal code
	 * and BTREE_NODE_journal_flush bit cleared by btree_flush_write().
	 */
	if (FUNC3(b)) {
		FUNC12("bnode %p is flushing by journal, retry", b);
		FUNC11(&b->write_lock);
		FUNC14(1);
		goto retry;
	}

	if (FUNC2(b))
		FUNC1(b, &cl);
	FUNC11(&b->write_lock);

	FUNC5(&cl);

	/* wait for any in flight btree write */
	FUNC6(&b->io_mutex);
	FUNC15(&b->io_mutex);

	return 0;
out_unlock:
	FUNC13(true, b);
	return -ENOMEM;
}