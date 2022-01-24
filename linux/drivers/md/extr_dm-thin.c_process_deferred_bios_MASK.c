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
struct thin_c {int dummy; } ;
struct bio_list {int dummy; } ;
struct pool {int /*<<< orphan*/  last_commit_jiffies; int /*<<< orphan*/  pmd; int /*<<< orphan*/  lock; struct bio_list deferred_flush_completions; struct bio_list deferred_flush_bios; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC5 (struct bio_list*) ; 
 scalar_t__ FUNC6 (struct pool*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 struct thin_c* FUNC9 (struct pool*) ; 
 struct thin_c* FUNC10 (struct pool*,struct thin_c*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC11 (struct pool*) ; 
 int /*<<< orphan*/  FUNC12 (struct thin_c*) ; 
 int /*<<< orphan*/  FUNC13 (struct thin_c*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC16(struct pool *pool)
{
	unsigned long flags;
	struct bio *bio;
	struct bio_list bios, bio_completions;
	struct thin_c *tc;

	tc = FUNC9(pool);
	while (tc) {
		FUNC13(tc);
		FUNC12(tc);
		tc = FUNC10(pool, tc);
	}

	/*
	 * If there are any deferred flush bios, we must commit the metadata
	 * before issuing them or signaling their completion.
	 */
	FUNC3(&bios);
	FUNC3(&bio_completions);

	FUNC14(&pool->lock, flags);
	FUNC4(&bios, &pool->deferred_flush_bios);
	FUNC3(&pool->deferred_flush_bios);

	FUNC4(&bio_completions, &pool->deferred_flush_completions);
	FUNC3(&pool->deferred_flush_completions);
	FUNC15(&pool->lock, flags);

	if (FUNC2(&bios) && FUNC2(&bio_completions) &&
	    !(FUNC7(pool->pmd) && FUNC11(pool)))
		return;

	if (FUNC6(pool)) {
		FUNC4(&bios, &bio_completions);

		while ((bio = FUNC5(&bios)))
			FUNC1(bio);
		return;
	}
	pool->last_commit_jiffies = jiffies;

	while ((bio = FUNC5(&bio_completions)))
		FUNC0(bio);

	while ((bio = FUNC5(&bios)))
		FUNC8(bio);
}