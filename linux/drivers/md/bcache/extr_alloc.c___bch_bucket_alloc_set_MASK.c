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
struct cache_set {int caches_loaded; struct cache** cache_by_alloc; int /*<<< orphan*/  bucket_lock; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr_this_dev; } ;
struct cache {TYPE_2__ sb; TYPE_1__* buckets; } ;
struct bkey {int /*<<< orphan*/ * ptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CACHE_SET_IO_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_CACHES_PER_SET ; 
 int /*<<< orphan*/  FUNC2 (struct bkey*,int) ; 
 long FUNC3 (struct cache*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_set*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC5 (struct bkey*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_set*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC7 (struct cache_set*,long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct cache_set *c, unsigned int reserve,
			   struct bkey *k, int n, bool wait)
{
	int i;

	/* No allocation if CACHE_SET_IO_DISABLE bit is set */
	if (FUNC10(FUNC9(CACHE_SET_IO_DISABLE, &c->flags)))
		return -1;

	FUNC8(&c->bucket_lock);
	FUNC0(!n || n > c->caches_loaded || n > MAX_CACHES_PER_SET);

	FUNC5(k);

	/* sort by free space/prio of oldest data in caches */

	for (i = 0; i < n; i++) {
		struct cache *ca = c->cache_by_alloc[i];
		long b = FUNC3(ca, reserve, wait);

		if (b == -1)
			goto err;

		k->ptr[i] = FUNC1(ca->buckets[b].gen,
				FUNC7(c, b),
				ca->sb.nr_this_dev);

		FUNC2(k, i + 1);
	}

	return 0;
err:
	FUNC4(c, k);
	FUNC6(c, k);
	return -1;
}