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
struct bucket {scalar_t__ prio; int /*<<< orphan*/  last_gc; int /*<<< orphan*/  gen; int /*<<< orphan*/  pin; } ;
struct btree {TYPE_1__* c; } ;
struct bkey {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  bucket_lock; scalar_t__ gc_mark_valid; } ;

/* Variables and functions */
 scalar_t__ BTREE_PRIO ; 
 scalar_t__ FUNC0 (struct bucket*) ; 
 scalar_t__ GC_MARK_DIRTY ; 
 scalar_t__ GC_MARK_METADATA ; 
 scalar_t__ FUNC1 (struct bkey const*) ; 
 struct bucket* FUNC2 (TYPE_1__*,struct bkey const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct bkey const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct bkey const*) ; 
 int /*<<< orphan*/  FUNC6 (struct btree*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(struct btree *b, const struct bkey *k,
				     unsigned int ptr)
{
	struct bucket *g = FUNC2(b->c, k, ptr);
	char buf[80];

	if (FUNC7(&b->c->bucket_lock)) {
		if (b->c->gc_mark_valid &&
		    (!FUNC0(g) ||
		     FUNC0(g) == GC_MARK_METADATA ||
		     (FUNC0(g) != GC_MARK_DIRTY && FUNC1(k))))
			goto err;

		if (g->prio == BTREE_PRIO)
			goto err;

		FUNC8(&b->c->bucket_lock);
	}

	return false;
err:
	FUNC8(&b->c->bucket_lock);
	FUNC5(buf, sizeof(buf), k);
	FUNC6(b,
"inconsistent extent pointer %s:\nbucket %zu pin %i prio %i gen %i last_gc %i mark %llu",
		  buf, FUNC3(b->c, k, ptr), FUNC4(&g->pin),
		  g->prio, g->gen, g->last_gc, FUNC0(g));
	return true;
}