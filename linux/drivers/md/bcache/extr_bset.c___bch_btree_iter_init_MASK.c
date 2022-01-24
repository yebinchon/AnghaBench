#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct btree_keys {int dummy; } ;
struct btree_iter {struct btree_keys* b; scalar_t__ used; int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
struct bset_tree {int /*<<< orphan*/  data; } ;
struct bkey {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bkey* FUNC1 (struct btree_keys*,struct bset_tree*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_iter*,struct bkey*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct bset_tree* FUNC4 (struct btree_keys*) ; 

__attribute__((used)) static struct bkey *FUNC5(struct btree_keys *b,
					  struct btree_iter *iter,
					  struct bkey *search,
					  struct bset_tree *start)
{
	struct bkey *ret = NULL;

	iter->size = FUNC0(iter->data);
	iter->used = 0;

#ifdef CONFIG_BCACHE_DEBUG
	iter->b = b;
#endif

	for (; start <= FUNC4(b); start++) {
		ret = FUNC1(b, start, search);
		FUNC2(iter, ret, FUNC3(start->data));
	}

	return ret;
}