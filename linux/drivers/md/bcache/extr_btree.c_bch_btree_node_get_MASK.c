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
struct cache_set {int /*<<< orphan*/  bucket_lock; } ;
struct btree_op {int dummy; } ;
struct TYPE_5__ {int nsets; TYPE_1__* set; } ;
struct bkey {int dummy; } ;
struct btree {int level; int accessed; TYPE_2__ keys; struct btree* parent; int /*<<< orphan*/  written; struct bkey key; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {scalar_t__ bio_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  tree; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 struct btree* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct btree*) ; 
 scalar_t__ FUNC3 (struct cache_set*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC4 (struct btree*) ; 
 scalar_t__ FUNC5 (struct btree*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct btree* FUNC7 (struct cache_set*,struct btree_op*,struct bkey*,int) ; 
 struct btree* FUNC8 (struct cache_set*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct btree*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,struct btree*) ; 

struct btree *FUNC14(struct cache_set *c, struct btree_op *op,
				 struct bkey *k, int level, bool write,
				 struct btree *parent)
{
	int i = 0;
	struct btree *b;

	FUNC0(level < 0);
retry:
	b = FUNC8(c, k);

	if (!b) {
		if (current->bio_list)
			return FUNC1(-EAGAIN);

		FUNC9(&c->bucket_lock);
		b = FUNC7(c, op, k, level);
		FUNC10(&c->bucket_lock);

		if (!b)
			goto retry;
		if (FUNC2(b))
			return b;

		FUNC4(b);

		if (!write)
			FUNC6(&b->lock);
	} else {
		FUNC12(write, b, level);
		if (FUNC3(c, &b->key) != FUNC3(c, k)) {
			FUNC13(write, b);
			goto retry;
		}
		FUNC0(b->level != level);
	}

	if (FUNC5(b)) {
		FUNC13(write, b);
		return FUNC1(-EIO);
	}

	FUNC0(!b->written);

	b->parent = parent;
	b->accessed = 1;

	for (; i <= b->keys.nsets && b->keys.set[i].size; i++) {
		FUNC11(b->keys.set[i].tree);
		FUNC11(b->keys.set[i].data);
	}

	for (; i <= b->keys.nsets; i++)
		FUNC11(b->keys.set[i].data);

	return b;
}