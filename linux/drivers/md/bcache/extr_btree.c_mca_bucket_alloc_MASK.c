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
struct cache_set {int dummy; } ;
struct btree {int /*<<< orphan*/  io_mutex; struct cache_set* c; int /*<<< orphan*/  work; int /*<<< orphan*/  list; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  lock; } ;
struct bkey {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btree_node_write_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct btree* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct btree*,struct bkey*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct btree *FUNC8(struct cache_set *c,
				      struct bkey *k, gfp_t gfp)
{
	/*
	 * kzalloc() is necessary here for initialization,
	 * see code comments in bch_btree_keys_init().
	 */
	struct btree *b = FUNC3(sizeof(struct btree), gfp);

	if (!b)
		return NULL;

	FUNC2(&b->lock);
	FUNC4(&b->lock);
	FUNC6(&b->write_lock);
	FUNC4(&b->write_lock);
	FUNC1(&b->list);
	FUNC0(&b->work, btree_node_write_work);
	b->c = c;
	FUNC7(&b->io_mutex, 1);

	FUNC5(b, k, gfp);
	return b;
}