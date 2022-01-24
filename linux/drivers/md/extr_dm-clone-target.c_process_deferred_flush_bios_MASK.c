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
struct clone {int /*<<< orphan*/  last_commit_jiffies; int /*<<< orphan*/  cmd; int /*<<< orphan*/  lock; struct bio_list deferred_flush_completions; struct bio_list deferred_flush_bios; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct bio_list BIO_EMPTY_LIST ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC5 (struct bio_list*) ; 
 scalar_t__ FUNC6 (struct clone*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC9 (struct clone*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct clone *clone)
{
	struct bio *bio;
	unsigned long flags;
	struct bio_list bios = BIO_EMPTY_LIST;
	struct bio_list bio_completions = BIO_EMPTY_LIST;

	/*
	 * If there are any deferred flush bios, we must commit the metadata
	 * before issuing them or signaling their completion.
	 */
	FUNC10(&clone->lock, flags);
	FUNC4(&bios, &clone->deferred_flush_bios);
	FUNC3(&clone->deferred_flush_bios);

	FUNC4(&bio_completions, &clone->deferred_flush_completions);
	FUNC3(&clone->deferred_flush_completions);
	FUNC11(&clone->lock, flags);

	if (FUNC2(&bios) && FUNC2(&bio_completions) &&
	    !(FUNC7(clone->cmd) && FUNC9(clone)))
		return;

	if (FUNC6(clone)) {
		FUNC4(&bios, &bio_completions);

		while ((bio = FUNC5(&bios)))
			FUNC1(bio);

		return;
	}

	clone->last_commit_jiffies = jiffies;

	while ((bio = FUNC5(&bio_completions)))
		FUNC0(bio);

	while ((bio = FUNC5(&bios)))
		FUNC8(bio);
}