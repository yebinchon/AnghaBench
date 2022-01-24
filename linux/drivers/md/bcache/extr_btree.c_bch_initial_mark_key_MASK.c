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
struct bucket {scalar_t__ prio; int /*<<< orphan*/  gen; } ;
struct bkey {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTREE_PRIO ; 
 scalar_t__ INITIAL_PRIO ; 
 unsigned int FUNC0 (struct bkey*) ; 
 struct bucket* FUNC1 (struct cache_set*,struct bkey*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct bkey*,unsigned int) ; 
 int /*<<< orphan*/  ZERO_KEY ; 
 int /*<<< orphan*/  FUNC3 (struct cache_set*,int,struct bkey*) ; 
 scalar_t__ FUNC4 (struct bkey*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct cache_set*,struct bkey*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_set*,struct bkey*,unsigned int) ; 

void FUNC7(struct cache_set *c, int level, struct bkey *k)
{
	unsigned int i;

	for (i = 0; i < FUNC0(k); i++)
		if (FUNC5(c, k, i) &&
		    !FUNC6(c, k, i)) {
			struct bucket *b = FUNC1(c, k, i);

			b->gen = FUNC2(k, i);

			if (level && FUNC4(k, &ZERO_KEY))
				b->prio = BTREE_PRIO;
			else if (!level && b->prio == BTREE_PRIO)
				b->prio = INITIAL_PRIO;
		}

	FUNC3(c, level, k);
}