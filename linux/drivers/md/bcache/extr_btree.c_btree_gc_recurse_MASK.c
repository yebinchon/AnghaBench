#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gc_stat {scalar_t__ nodes; scalar_t__ nodes_pre; } ;
struct gc_merge_info {struct btree* b; int /*<<< orphan*/  keys; } ;
struct closure {int dummy; } ;
struct btree_op {int dummy; } ;
struct btree_iter {int dummy; } ;
struct btree {int /*<<< orphan*/  write_lock; TYPE_1__* c; int /*<<< orphan*/  key; scalar_t__ level; int /*<<< orphan*/  keys; } ;
struct bkey {int dummy; } ;
typedef  int /*<<< orphan*/  r ;
struct TYPE_3__ {int /*<<< orphan*/  search_inflight; int /*<<< orphan*/  gc_done; } ;

/* Variables and functions */
 int FUNC0 (struct gc_merge_info*) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  EINTR ; 
 struct btree* FUNC1 (int /*<<< orphan*/ ) ; 
 int GC_MERGE_NODES ; 
 scalar_t__ FUNC2 (struct btree*) ; 
 int /*<<< orphan*/  FUNC3 (struct btree*) ; 
 int FUNC4 (struct btree*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct btree_iter*,int /*<<< orphan*/ *) ; 
 struct bkey* FUNC7 (struct btree_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct btree* FUNC8 (TYPE_1__*,struct btree_op*,struct bkey*,scalar_t__,int,struct btree*) ; 
 int /*<<< orphan*/  FUNC9 (struct btree*,struct closure*) ; 
 int /*<<< orphan*/  bch_ptr_bad ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct btree*,struct btree_op*,struct gc_stat*,struct gc_merge_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct btree*) ; 
 int FUNC13 (struct btree*,struct gc_stat*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int FUNC15 (struct btree*,struct btree_op*,struct btree*) ; 
 scalar_t__ FUNC16 (struct btree*) ; 
 int /*<<< orphan*/  FUNC17 (struct gc_merge_info*,struct gc_merge_info*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int,struct btree*) ; 

__attribute__((used)) static int FUNC22(struct btree *b, struct btree_op *op,
			    struct closure *writes, struct gc_stat *gc)
{
	int ret = 0;
	bool should_rewrite;
	struct bkey *k;
	struct btree_iter iter;
	struct gc_merge_info r[GC_MERGE_NODES];
	struct gc_merge_info *i, *last = r + FUNC0(r) - 1;

	FUNC6(&b->keys, &iter, &b->c->gc_done);

	for (i = r; i < r + FUNC0(r); i++)
		i->b = FUNC1(-EINTR);

	while (1) {
		k = FUNC7(&iter, &b->keys, bch_ptr_bad);
		if (k) {
			r->b = FUNC8(b->c, op, k, b->level - 1,
						  true, b);
			if (FUNC2(r->b)) {
				ret = FUNC4(r->b);
				break;
			}

			r->keys = FUNC12(r->b);

			ret = FUNC11(b, op, gc, r);
			if (ret)
				break;
		}

		if (!last->b)
			break;

		if (!FUNC2(last->b)) {
			should_rewrite = FUNC13(last->b, gc);
			if (should_rewrite) {
				ret = FUNC15(b, op, last->b);
				if (ret)
					break;
			}

			if (last->b->level) {
				ret = FUNC22(last->b, op, writes, gc);
				if (ret)
					break;
			}

			FUNC10(&b->c->gc_done, &last->b->key);

			/*
			 * Must flush leaf nodes before gc ends, since replace
			 * operations aren't journalled
			 */
			FUNC18(&last->b->write_lock);
			if (FUNC16(last->b))
				FUNC9(last->b, writes);
			FUNC19(&last->b->write_lock);
			FUNC21(true, last->b);
		}

		FUNC17(r + 1, r, sizeof(r[0]) * (GC_MERGE_NODES - 1));
		r->b = NULL;

		if (FUNC5(&b->c->search_inflight) &&
		    gc->nodes >= gc->nodes_pre + FUNC14(b->c)) {
			gc->nodes_pre =  gc->nodes;
			ret = -EAGAIN;
			break;
		}

		if (FUNC20()) {
			ret = -EAGAIN;
			break;
		}
	}

	for (i = r; i < r + FUNC0(r); i++)
		if (!FUNC3(i->b)) {
			FUNC18(&i->b->write_lock);
			if (FUNC16(i->b))
				FUNC9(i->b, writes);
			FUNC19(&i->b->write_lock);
			FUNC21(true, i->b);
		}

	return ret;
}