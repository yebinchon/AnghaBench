#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct keylist {int dummy; } ;
struct closure {int dummy; } ;
struct btree_op {scalar_t__ lock; } ;
struct TYPE_5__ {scalar_t__ last_set_unwritten; } ;
struct btree {TYPE_3__* c; int /*<<< orphan*/  write_lock; scalar_t__ level; TYPE_1__ keys; } ;
struct bkey {int dummy; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_8__ {scalar_t__ bio_list; } ;
struct TYPE_7__ {TYPE_2__* root; } ;
struct TYPE_6__ {scalar_t__ level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC1 (struct btree*) ; 
 scalar_t__ FUNC2 (struct btree*,struct btree_op*,struct keylist*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC3 (struct btree*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct btree*,struct closure*) ; 
 scalar_t__ FUNC5 (struct keylist*) ; 
 scalar_t__ FUNC6 (struct keylist*) ; 
 scalar_t__ FUNC7 (struct btree*) ; 
 int FUNC8 (struct btree*,struct btree_op*,struct keylist*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC9 (struct closure*) ; 
 int /*<<< orphan*/  FUNC10 (struct closure*) ; 
 TYPE_4__* current ; 
 scalar_t__ FUNC11 (struct btree*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct btree*) ; 

__attribute__((used)) static int FUNC15(struct btree *b, struct btree_op *op,
				 struct keylist *insert_keys,
				 atomic_t *journal_ref,
				 struct bkey *replace_key)
{
	struct closure cl;

	FUNC0(b->level && replace_key);

	FUNC9(&cl);

	FUNC12(&b->write_lock);

	if (FUNC14(b) != FUNC7(b) &&
	    b->keys.last_set_unwritten)
		FUNC1(b); /* just wrote a set */

	if (FUNC6(insert_keys) > FUNC11(b)) {
		FUNC13(&b->write_lock);
		goto split;
	}

	FUNC0(FUNC14(b) != FUNC7(b));

	if (FUNC2(b, op, insert_keys, replace_key)) {
		if (!b->level)
			FUNC3(b, journal_ref);
		else
			FUNC4(b, &cl);
	}

	FUNC13(&b->write_lock);

	/* wait for btree node write if necessary, after unlock */
	FUNC10(&cl);

	return 0;
split:
	if (current->bio_list) {
		op->lock = b->c->root->level + 1;
		return -EAGAIN;
	} else if (op->lock <= b->c->root->level) {
		op->lock = b->c->root->level + 1;
		return -EINTR;
	} else {
		/* Invalidated all iterators */
		int ret = FUNC8(b, op, insert_keys, replace_key);

		if (FUNC5(insert_keys))
			return 0;
		else if (!ret)
			return -EINTR;
		return ret;
	}
}