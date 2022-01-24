#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct btree_iter {int size; TYPE_2__* b; scalar_t__ used; } ;
struct TYPE_10__ {TYPE_1__* set; } ;
struct btree {scalar_t__ written; int /*<<< orphan*/  key; TYPE_4__* c; TYPE_2__ keys; } ;
struct bset {scalar_t__ seq; int version; scalar_t__ magic; int /*<<< orphan*/  keys; int /*<<< orphan*/  start; int /*<<< orphan*/  csum; } ;
struct TYPE_11__ {int bucket_size; int block_size; } ;
struct TYPE_12__ {int /*<<< orphan*/  fill_iter; TYPE_3__ sb; int /*<<< orphan*/  sort; } ;
struct TYPE_9__ {int /*<<< orphan*/  end; scalar_t__ size; struct bset* data; } ;

/* Variables and functions */
#define  BCACHE_BSET_VERSION 128 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct bset*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btree_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct btree_iter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct bset*) ; 
 int /*<<< orphan*/  FUNC9 (struct btree*,struct bset*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,struct bset*) ; 
 scalar_t__ FUNC12 (struct btree*) ; 
 struct bset* FUNC13 (struct btree*) ; 
 int /*<<< orphan*/  FUNC14 (struct btree*,struct bset*) ; 
 int /*<<< orphan*/  FUNC15 (struct bset*) ; 
 struct btree_iter* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct btree_iter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct bset*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct btree*) ; 
 struct bset* FUNC20 (struct btree*) ; 

void FUNC21(struct btree *b)
{
	const char *err = "bad btree header";
	struct bset *i = FUNC13(b);
	struct btree_iter *iter;

	/*
	 * c->fill_iter can allocate an iterator with more memory space
	 * than static MAX_BSETS.
	 * See the comment arount cache_set->fill_iter.
	 */
	iter = FUNC16(&b->c->fill_iter, GFP_NOIO);
	iter->size = b->c->sb.bucket_size / b->c->sb.block_size;
	iter->used = 0;

#ifdef CONFIG_BCACHE_DEBUG
	iter->b = &b->keys;
#endif

	if (!i->seq)
		goto err;

	for (;
	     b->written < FUNC12(b) && i->seq == b->keys.set[0].data->seq;
	     i = FUNC20(b)) {
		err = "unsupported bset version";
		if (i->version > BCACHE_BSET_VERSION)
			goto err;

		err = "bad btree header";
		if (b->written + FUNC18(i, FUNC7(b->c)) >
		    FUNC12(b))
			goto err;

		err = "bad magic";
		if (i->magic != FUNC10(&b->c->sb))
			goto err;

		err = "bad checksum";
		switch (i->version) {
		case 0:
			if (i->csum != FUNC15(i))
				goto err;
			break;
		case BCACHE_BSET_VERSION:
			if (i->csum != FUNC14(b, i))
				goto err;
			break;
		}

		err = "empty set";
		if (i != b->keys.set[0].data && !i->keys)
			goto err;

		FUNC3(iter, i->start, FUNC8(i));

		b->written += FUNC18(i, FUNC7(b->c));
	}

	err = "corrupted btree";
	for (i = FUNC20(b);
	     FUNC11(&b->keys, i) < FUNC0(&b->key);
	     i = ((void *) i) + FUNC7(b->c))
		if (i->seq == b->keys.set[0].data->seq)
			goto err;

	FUNC4(&b->keys, iter, &b->c->sort);

	i = b->keys.set[0].data;
	err = "short btree key";
	if (b->keys.set[0].size &&
	    FUNC6(&b->key, &b->keys.set[0].end) < 0)
		goto err;

	if (b->written < FUNC12(b))
		FUNC2(&b->keys, FUNC20(b),
				   FUNC10(&b->c->sb));
out:
	FUNC17(iter, &b->c->fill_iter);
	return;
err:
	FUNC19(b);
	FUNC5(b->c, "%s at bucket %zu, block %u, %u keys",
			    err, FUNC1(b->c, &b->key, 0),
			    FUNC9(b, i), i->keys);
	goto out;
}