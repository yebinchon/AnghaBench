#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bio_list {int dummy; } ;
struct era {TYPE_1__* md; int /*<<< orphan*/  deferred_lock; struct bio_list deferred_bios; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_writeset; int /*<<< orphan*/  bitset_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC4 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct era*,struct bio*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct era *era)
{
	int r;
	struct bio_list deferred_bios, marked_bios;
	struct bio *bio;
	bool commit_needed = false;
	bool failed = false;

	FUNC2(&deferred_bios);
	FUNC2(&marked_bios);

	FUNC8(&era->deferred_lock);
	FUNC3(&deferred_bios, &era->deferred_bios);
	FUNC2(&era->deferred_bios);
	FUNC9(&era->deferred_lock);

	while ((bio = FUNC4(&deferred_bios))) {
		r = FUNC10(&era->md->bitset_info,
					  era->md->current_writeset,
					  FUNC6(era, bio));
		if (r < 0) {
			/*
			 * This is bad news, we need to rollback.
			 * FIXME: finish.
			 */
			failed = true;

		} else if (r == 0)
			commit_needed = true;

		FUNC1(&marked_bios, bio);
	}

	if (commit_needed) {
		r = FUNC7(era->md);
		if (r)
			failed = true;
	}

	if (failed)
		while ((bio = FUNC4(&marked_bios)))
			FUNC0(bio);
	else
		while ((bio = FUNC4(&marked_bios)))
			FUNC5(bio);
}