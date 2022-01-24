#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bucket {scalar_t__ prio; int /*<<< orphan*/  last_gc; int /*<<< orphan*/  gen; int /*<<< orphan*/  pin; } ;
struct btree {TYPE_1__* c; } ;
struct bkey {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  bucket_lock; scalar_t__ gc_mark_valid; } ;

/* Variables and functions */
 scalar_t__ BTREE_PRIO ; 
 scalar_t__ FUNC0 (struct bucket*) ; 
 scalar_t__ GC_MARK_METADATA ; 
 scalar_t__ FUNC1 (struct bkey const*) ; 
 unsigned int FUNC2 (struct bkey const*) ; 
 struct bucket* FUNC3 (TYPE_1__*,struct bkey const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct bkey const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,struct bkey const*) ; 
 int /*<<< orphan*/  FUNC7 (struct btree*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*,struct bkey const*,unsigned int) ; 

__attribute__((used)) static bool FUNC11(struct btree *b, const struct bkey *k)
{
	unsigned int i;
	char buf[80];
	struct bucket *g;

	if (FUNC8(&b->c->bucket_lock)) {
		for (i = 0; i < FUNC2(k); i++)
			if (FUNC10(b->c, k, i)) {
				g = FUNC3(b->c, k, i);

				if (FUNC1(k) ||
				    g->prio != BTREE_PRIO ||
				    (b->c->gc_mark_valid &&
				     FUNC0(g) != GC_MARK_METADATA))
					goto err;
			}

		FUNC9(&b->c->bucket_lock);
	}

	return false;
err:
	FUNC9(&b->c->bucket_lock);
	FUNC6(buf, sizeof(buf), k);
	FUNC7(b,
"inconsistent btree pointer %s: bucket %zi pin %i prio %i gen %i last_gc %i mark %llu",
		  buf, FUNC4(b->c, k, i), FUNC5(&g->pin),
		  g->prio, g->gen, g->last_gc, FUNC0(g));
	return true;
}