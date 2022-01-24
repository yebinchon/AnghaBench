#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct page {int dummy; } ;
struct btree_keys {unsigned int nsets; unsigned int page_order; TYPE_1__* set; } ;
struct btree_iter {int dummy; } ;
struct bset_sort_state {unsigned int page_order; int /*<<< orphan*/  time; int /*<<< orphan*/  pool; } ;
struct bset {scalar_t__ start; int /*<<< orphan*/  keys; int /*<<< orphan*/  version; int /*<<< orphan*/  seq; int /*<<< orphan*/  magic; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; int /*<<< orphan*/  keys; int /*<<< orphan*/  version; int /*<<< orphan*/  seq; int /*<<< orphan*/  magic; } ;
struct TYPE_3__ {TYPE_2__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int GFP_NOWAIT ; 
 int __GFP_NOWARN ; 
 scalar_t__ FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_keys*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct bset*) ; 
 int /*<<< orphan*/  FUNC5 (struct btree_keys*,struct bset*,struct btree_iter*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct page* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bset* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct bset*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct bset*) ; 

__attribute__((used)) static void FUNC14(struct btree_keys *b, struct btree_iter *iter,
			 unsigned int start, unsigned int order, bool fixup,
			 struct bset_sort_state *state)
{
	uint64_t start_time;
	bool used_mempool = false;
	struct bset *out = (void *) FUNC1(__GFP_NOWARN|GFP_NOWAIT,
						     order);
	if (!out) {
		struct page *outp;

		FUNC0(order > state->page_order);

		outp = FUNC9(&state->pool, GFP_NOIO);
		out = FUNC11(outp);
		used_mempool = true;
		order = state->page_order;
	}

	start_time = FUNC7();

	FUNC5(b, out, iter, fixup, false);
	b->nsets = start;

	if (!start && order == b->page_order) {
		/*
		 * Our temporary buffer is the same size as the btree node's
		 * buffer, we can just swap buffers instead of doing a big
		 * memcpy()
		 */

		out->magic	= b->set->data->magic;
		out->seq	= b->set->data->seq;
		out->version	= b->set->data->version;
		FUNC12(out, b->set->data);
	} else {
		b->set[start].data->keys = out->keys;
		FUNC8(b->set[start].data->start, out->start,
		       (void *) FUNC4(out) - (void *) out->start);
	}

	if (used_mempool)
		FUNC10(FUNC13(out), &state->pool);
	else
		FUNC6((unsigned long) out, order);

	FUNC2(b);

	if (!start)
		FUNC3(&state->time, start_time);
}