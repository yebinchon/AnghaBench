#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct keylist {int /*<<< orphan*/  top; } ;
struct closure {int dummy; } ;
struct btree_op {int dummy; } ;
struct btree {scalar_t__ level; int /*<<< orphan*/  key; TYPE_5__* c; int /*<<< orphan*/ * parent; int /*<<< orphan*/  write_lock; } ;
struct bkey {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  btree_split_time; } ;
struct TYPE_8__ {int keys; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int EINTR ; 
 int ENOMEM ; 
 struct btree* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct btree*) ; 
 int /*<<< orphan*/  MAX_KEY ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct btree*,struct btree_op*,struct keylist*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct btree_op*,struct keylist*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct btree* FUNC6 (TYPE_5__*,struct btree_op*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct btree*,struct closure*) ; 
 int /*<<< orphan*/  FUNC8 (struct btree*) ; 
 int /*<<< orphan*/  FUNC9 (struct keylist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC11 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC12 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int FUNC20 (struct btree*) ; 
 TYPE_1__* FUNC21 (struct btree*) ; 
 scalar_t__ FUNC22 (struct btree*,struct btree_op*) ; 
 struct btree* FUNC23 (struct btree*,struct btree_op*) ; 
 int /*<<< orphan*/  FUNC24 (struct btree*) ; 
 int /*<<< orphan*/  FUNC25 (struct closure*) ; 
 int /*<<< orphan*/  FUNC26 (struct closure*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (struct btree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int,struct btree*) ; 
 int FUNC33 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct btree*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct btree*,int) ; 

__attribute__((used)) static int FUNC36(struct btree *b, struct btree_op *op,
		       struct keylist *insert_keys,
		       struct bkey *replace_key)
{
	bool split;
	struct btree *n1, *n2 = NULL, *n3 = NULL;
	uint64_t start_time = FUNC27();
	struct closure cl;
	struct keylist parent_keys;

	FUNC25(&cl);
	FUNC11(&parent_keys);

	if (FUNC22(b, op)) {
		if (!b->level)
			return -EINTR;
		else
			FUNC3(1, "insufficient reserve for split\n");
	}

	n1 = FUNC23(b, op);
	if (FUNC2(n1))
		goto err;

	split = FUNC33(FUNC21(n1),
			   FUNC17(n1->c)) > (FUNC20(b) * 4) / 5;

	if (split) {
		unsigned int keys = 0;

		FUNC35(b, FUNC21(n1)->keys);

		n2 = FUNC6(b->c, op, b->level, b->parent);
		if (FUNC2(n2))
			goto err_free1;

		if (!b->parent) {
			n3 = FUNC6(b->c, op, b->level + 1, NULL);
			if (FUNC2(n3))
				goto err_free2;
		}

		FUNC30(&n1->write_lock);
		FUNC30(&n2->write_lock);

		FUNC4(n1, op, insert_keys, replace_key);

		/*
		 * Has to be a linear search because we don't have an auxiliary
		 * search tree yet
		 */

		while (keys < (FUNC21(n1)->keys * 3) / 5)
			keys += FUNC16(FUNC18(FUNC21(n1),
							keys));

		FUNC14(&n1->key,
			      FUNC18(FUNC21(n1), keys));
		keys += FUNC16(FUNC18(FUNC21(n1), keys));

		FUNC21(n2)->keys = FUNC21(n1)->keys - keys;
		FUNC21(n1)->keys = keys;

		FUNC29(FUNC21(n2)->start,
		       FUNC19(FUNC21(n1)),
		       FUNC21(n2)->keys * sizeof(uint64_t));

		FUNC14(&n2->key, &b->key);

		FUNC9(&parent_keys, &n2->key);
		FUNC7(n2, &cl);
		FUNC31(&n2->write_lock);
		FUNC32(true, n2);
	} else {
		FUNC34(b, FUNC21(n1)->keys);

		FUNC30(&n1->write_lock);
		FUNC4(n1, op, insert_keys, replace_key);
	}

	FUNC9(&parent_keys, &n1->key);
	FUNC7(n1, &cl);
	FUNC31(&n1->write_lock);

	if (n3) {
		/* Depth increases, make a new root */
		FUNC30(&n3->write_lock);
		FUNC14(&n3->key, &MAX_KEY);
		FUNC4(n3, op, &parent_keys, NULL);
		FUNC7(n3, &cl);
		FUNC31(&n3->write_lock);

		FUNC26(&cl);
		FUNC8(n3);
		FUNC32(true, n3);
	} else if (!b->parent) {
		/* Root filled up but didn't need to be split */
		FUNC26(&cl);
		FUNC8(n1);
	} else {
		/* Split a non root node */
		FUNC26(&cl);
		FUNC28(b, parent_keys.top);
		FUNC12(&parent_keys);

		FUNC5(b->parent, op, &parent_keys, NULL, NULL);
		FUNC0(!FUNC10(&parent_keys));
	}

	FUNC24(b);
	FUNC32(true, n1);

	FUNC13(&b->c->btree_split_time, start_time);

	return 0;
err_free2:
	FUNC15(b->c, &n2->key);
	FUNC24(n2);
	FUNC32(true, n2);
err_free1:
	FUNC15(b->c, &n1->key);
	FUNC24(n1);
	FUNC32(true, n1);
err:
	FUNC3(1, "bcache: btree split failed (level %u)", b->level);

	if (n3 == FUNC1(-EAGAIN) ||
	    n2 == FUNC1(-EAGAIN) ||
	    n1 == FUNC1(-EAGAIN))
		return -EAGAIN;

	return -ENOMEM;
}