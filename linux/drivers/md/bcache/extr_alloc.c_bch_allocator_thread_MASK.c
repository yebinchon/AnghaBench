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
struct TYPE_3__ {int /*<<< orphan*/  bucket_size; } ;
struct cache {int /*<<< orphan*/  free_inc; TYPE_2__* set; int /*<<< orphan*/  invalidate_needs_gc; TYPE_1__ sb; int /*<<< orphan*/  bdev; scalar_t__ discard; } ;
struct TYPE_4__ {int /*<<< orphan*/  sb; int /*<<< orphan*/  prio_blocked; scalar_t__ gc_mark_valid; int /*<<< orphan*/  bucket_wait; int /*<<< orphan*/  btree_cache_wait; int /*<<< orphan*/  bucket_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cache*,long) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC9 (struct cache*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(void *arg)
{
	struct cache *ca = arg;

	FUNC10(&ca->set->bucket_lock);

	while (1) {
		/*
		 * First, we pull buckets off of the unused and free_inc lists,
		 * possibly issue discards to them, then we add the bucket to
		 * the free list:
		 */
		while (1) {
			long bucket;

			if (!FUNC8(&ca->free_inc, bucket))
				break;

			if (ca->discard) {
				FUNC11(&ca->set->bucket_lock);
				FUNC5(ca->bdev,
					FUNC6(ca->set, bucket),
					ca->sb.bucket_size, GFP_KERNEL, 0);
				FUNC10(&ca->set->bucket_lock);
			}

			FUNC1(ca, FUNC3(ca, bucket));
			FUNC13(&ca->set->btree_cache_wait);
			FUNC13(&ca->set->bucket_wait);
		}

		/*
		 * We've run out of free buckets, we need to find some buckets
		 * we can invalidate. First, invalidate them in memory and add
		 * them to the free_inc list:
		 */

retry_invalidate:
		FUNC1(ca, ca->set->gc_mark_valid &&
			       !ca->invalidate_needs_gc);
		FUNC9(ca);

		/*
		 * Now, we write their new gens to disk so we can start writing
		 * new stuff to them:
		 */
		FUNC1(ca, !FUNC2(&ca->set->prio_blocked));
		if (FUNC0(&ca->set->sb)) {
			/*
			 * This could deadlock if an allocation with a btree
			 * node locked ever blocked - having the btree node
			 * locked would block garbage collection, but here we're
			 * waiting on garbage collection before we invalidate
			 * and free anything.
			 *
			 * But this should be safe since the btree code always
			 * uses btree_check_reserve() before allocating now, and
			 * if it fails it blocks without btree nodes locked.
			 */
			if (!FUNC7(&ca->free_inc))
				goto retry_invalidate;

			FUNC4(ca);
		}
	}
out:
	FUNC12();
	return 0;
}