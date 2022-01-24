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
struct bio_list {int dummy; } ;
struct thin_c {int /*<<< orphan*/  lock; struct bio_list deferred_bio_list; scalar_t__ requeue_mode; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  pmd; int /*<<< orphan*/  throttle; int /*<<< orphan*/  (* process_bio ) (struct thin_c*,struct bio*) ;int /*<<< orphan*/  (* process_discard ) (struct thin_c*,struct bio*) ;} ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DM_REQUEUE ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (struct thin_c*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*,struct bio*) ; 
 scalar_t__ FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC5 (struct bio_list*) ; 
 scalar_t__ FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC8 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct pool*) ; 
 int /*<<< orphan*/  FUNC11 (struct thin_c*,struct bio_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct thin_c*,struct bio*) ; 
 int /*<<< orphan*/  FUNC15 (struct thin_c*,struct bio*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct thin_c *tc)
{
	struct pool *pool = tc->pool;
	unsigned long flags;
	struct bio *bio;
	struct bio_list bios;
	struct blk_plug plug;
	unsigned count = 0;

	if (tc->requeue_mode) {
		FUNC11(tc, &tc->deferred_bio_list,
				BLK_STS_DM_REQUEUE);
		return;
	}

	FUNC3(&bios);

	FUNC12(&tc->lock, flags);

	if (FUNC2(&tc->deferred_bio_list)) {
		FUNC13(&tc->lock, flags);
		return;
	}

	FUNC0(tc);

	FUNC4(&bios, &tc->deferred_bio_list);
	FUNC3(&tc->deferred_bio_list);

	FUNC13(&tc->lock, flags);

	FUNC8(&plug);
	while ((bio = FUNC5(&bios))) {
		/*
		 * If we've got no free new_mapping structs, and processing
		 * this bio might require one, we pause until there are some
		 * prepared mappings to process.
		 */
		if (FUNC10(pool)) {
			FUNC12(&tc->lock, flags);
			FUNC1(&tc->deferred_bio_list, bio);
			FUNC4(&tc->deferred_bio_list, &bios);
			FUNC13(&tc->lock, flags);
			break;
		}

		if (FUNC6(bio) == REQ_OP_DISCARD)
			pool->process_discard(tc, bio);
		else
			pool->process_bio(tc, bio);

		if ((count++ & 127) == 0) {
			FUNC16(&pool->throttle);
			FUNC9(pool->pmd);
		}
	}
	FUNC7(&plug);
}