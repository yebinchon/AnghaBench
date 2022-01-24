#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct keylist {int /*<<< orphan*/  top; } ;
struct gc_stat {int /*<<< orphan*/  nodes; } ;
struct gc_merge_info {unsigned int keys; struct btree* b; } ;
struct closure {int dummy; } ;
struct btree_op {int dummy; } ;
struct TYPE_6__ {TYPE_1__* set; } ;
struct btree {TYPE_3__* c; struct gc_merge_info key; int /*<<< orphan*/  write_lock; TYPE_2__ keys; } ;
struct bset {unsigned int keys; struct gc_merge_info* start; } ;
struct bkey {unsigned int keys; struct btree* b; } ;
typedef  int /*<<< orphan*/  r ;
typedef  int /*<<< orphan*/  new_nodes ;
struct TYPE_7__ {int /*<<< orphan*/  prio_blocked; } ;
struct TYPE_5__ {struct bset* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 struct btree* FUNC1 (int) ; 
 int GC_MERGE_NODES ; 
 scalar_t__ FUNC2 (struct btree*) ; 
 int /*<<< orphan*/  ZERO_KEY ; 
 scalar_t__ FUNC3 (struct keylist*,unsigned int) ; 
 unsigned int FUNC4 (struct bset*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct btree*,struct btree_op*,struct keylist*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct btree*,struct closure*) ; 
 int /*<<< orphan*/  FUNC8 (struct keylist*,struct gc_merge_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC10 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC11 (struct keylist*) ; 
 struct gc_merge_info* FUNC12 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC13 (struct keylist*) ; 
 int /*<<< orphan*/  FUNC14 (struct gc_merge_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct gc_merge_info*,struct gc_merge_info*) ; 
 struct gc_merge_info* FUNC16 (struct gc_merge_info*) ; 
 unsigned int FUNC17 (struct gc_merge_info*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 struct gc_merge_info* FUNC19 (struct bset*,unsigned int) ; 
 struct gc_merge_info* FUNC20 (struct bset*) ; 
 unsigned int FUNC21 (struct btree*) ; 
 struct bset* FUNC22 (struct btree*) ; 
 scalar_t__ FUNC23 (struct btree*,int /*<<< orphan*/ *) ; 
 int FUNC24 (TYPE_3__*) ; 
 struct btree* FUNC25 (struct btree*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct btree*) ; 
 int /*<<< orphan*/  FUNC27 (struct closure*) ; 
 int /*<<< orphan*/  FUNC28 (struct closure*) ; 
 int /*<<< orphan*/  FUNC29 (struct btree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct gc_merge_info*,struct gc_merge_info*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct gc_merge_info*,struct gc_merge_info*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct btree**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int,struct btree*) ; 
 int /*<<< orphan*/  FUNC36 (unsigned int) ; 

__attribute__((used)) static int FUNC37(struct btree *b, struct btree_op *op,
			     struct gc_stat *gc, struct gc_merge_info *r)
{
	unsigned int i, nodes = 0, keys = 0, blocks;
	struct btree *new_nodes[GC_MERGE_NODES];
	struct keylist keylist;
	struct closure cl;
	struct bkey *k;

	FUNC11(&keylist);

	if (FUNC23(b, NULL))
		return 0;

	FUNC32(new_nodes, 0, sizeof(new_nodes));
	FUNC27(&cl);

	while (nodes < GC_MERGE_NODES && !FUNC2(r[nodes].b))
		keys += r[nodes++].keys;

	blocks = FUNC24(b->c) * 2 / 3;

	if (nodes < 2 ||
	    FUNC4(b->keys.set[0].data, keys,
			 FUNC18(b->c)) > blocks * (nodes - 1))
		return 0;

	for (i = 0; i < nodes; i++) {
		new_nodes[i] = FUNC25(r[i].b, NULL);
		if (FUNC2(new_nodes[i]))
			goto out_nocoalesce;
	}

	/*
	 * We have to check the reserve here, after we've allocated our new
	 * nodes, to make sure the insert below will succeed - we also check
	 * before as an optimization to potentially avoid a bunch of expensive
	 * allocs/sorts
	 */
	if (FUNC23(b, NULL))
		goto out_nocoalesce;

	for (i = 0; i < nodes; i++)
		FUNC33(&new_nodes[i]->write_lock);

	for (i = nodes - 1; i > 0; --i) {
		struct bset *n1 = FUNC22(new_nodes[i]);
		struct bset *n2 = FUNC22(new_nodes[i - 1]);
		struct bkey *k, *last = NULL;

		keys = 0;

		if (i > 1) {
			for (k = n2->start;
			     k < FUNC20(n2);
			     k = FUNC16(k)) {
				if (FUNC4(n1, n1->keys + keys +
						 FUNC17(k),
						 FUNC18(b->c)) > blocks)
					break;

				last = k;
				keys += FUNC17(k);
			}
		} else {
			/*
			 * Last node we're not getting rid of - we're getting
			 * rid of the node at r[0]. Have to try and fit all of
			 * the remaining keys into this node; we can't ensure
			 * they will always fit due to rounding and variable
			 * length keys (shouldn't be possible in practice,
			 * though)
			 */
			if (FUNC4(n1, n1->keys + n2->keys,
					 FUNC18(b->c)) >
			    FUNC21(new_nodes[i]))
				goto out_nocoalesce;

			keys = n2->keys;
			/* Take the key of the node we're getting rid of */
			last = &r->b->key;
		}

		FUNC0(FUNC4(n1, n1->keys + keys, FUNC18(b->c)) >
		       FUNC21(new_nodes[i]));

		if (last)
			FUNC15(&new_nodes[i]->key, last);

		FUNC30(FUNC20(n1),
		       n2->start,
		       (void *) FUNC19(n2, keys) - (void *) n2->start);

		n1->keys += keys;
		r[i].keys = n1->keys;

		FUNC31(n2->start,
			FUNC19(n2, keys),
			(void *) FUNC20(n2) -
			(void *) FUNC19(n2, keys));

		n2->keys -= keys;

		if (FUNC3(&keylist,
					  FUNC17(&new_nodes[i]->key)))
			goto out_nocoalesce;

		FUNC7(new_nodes[i], &cl);
		FUNC8(&keylist, &new_nodes[i]->key);
	}

	for (i = 0; i < nodes; i++)
		FUNC34(&new_nodes[i]->write_lock);

	FUNC28(&cl);

	/* We emptied out this node */
	FUNC0(FUNC22(new_nodes[0])->keys);
	FUNC26(new_nodes[0]);
	FUNC35(true, new_nodes[0]);
	new_nodes[0] = NULL;

	for (i = 0; i < nodes; i++) {
		if (FUNC3(&keylist, FUNC17(&r[i].b->key)))
			goto out_nocoalesce;

		FUNC29(r[i].b, keylist.top);
		FUNC13(&keylist);
	}

	FUNC6(b, op, &keylist, NULL, NULL);
	FUNC0(!FUNC9(&keylist));

	for (i = 0; i < nodes; i++) {
		FUNC26(r[i].b);
		FUNC35(true, r[i].b);

		r[i].b = new_nodes[i];
	}

	FUNC31(r, r + 1, sizeof(r[0]) * (nodes - 1));
	r[nodes - 1].b = FUNC1(-EINTR);

	FUNC36(nodes);
	gc->nodes--;

	FUNC10(&keylist);

	/* Invalidated our iterator */
	return -EINTR;

out_nocoalesce:
	FUNC28(&cl);

	while ((k = FUNC12(&keylist)))
		if (!FUNC14(k, &ZERO_KEY))
			FUNC5(&b->c->prio_blocked);
	FUNC10(&keylist);

	for (i = 0; i < nodes; i++)
		if (!FUNC2(new_nodes[i])) {
			FUNC26(new_nodes[i]);
			FUNC35(true, new_nodes[i]);
		}
	return 0;
}