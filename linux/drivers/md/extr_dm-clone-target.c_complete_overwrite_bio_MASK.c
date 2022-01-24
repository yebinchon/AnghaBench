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
struct clone {int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_flush_completions; } ;
struct bio {int bi_opf; } ;

/* Variables and functions */
 scalar_t__ CM_READ_ONLY ; 
 int REQ_FUA ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC3 (struct clone*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct clone*) ; 

__attribute__((used)) static void FUNC8(struct clone *clone, struct bio *bio)
{
	unsigned long flags;

	/*
	 * If the bio has the REQ_FUA flag set we must commit the metadata
	 * before signaling its completion.
	 *
	 * complete_overwrite_bio() is only called by hydration_complete(),
	 * after having successfully updated the metadata. This means we don't
	 * need to call dm_clone_changed_this_transaction() to check if the
	 * metadata has changed and thus we can avoid taking the metadata spin
	 * lock.
	 */
	if (!(bio->bi_opf & REQ_FUA)) {
		FUNC0(bio);
		return;
	}

	/*
	 * If the metadata mode is RO or FAIL we won't be able to commit the
	 * metadata, so we complete the bio with an error.
	 */
	if (FUNC6(FUNC3(clone) >= CM_READ_ONLY)) {
		FUNC1(bio);
		return;
	}

	/*
	 * Batch together any bios that trigger commits and then issue a single
	 * commit for them in process_deferred_flush_bios().
	 */
	FUNC4(&clone->lock, flags);
	FUNC2(&clone->deferred_flush_completions, bio);
	FUNC5(&clone->lock, flags);

	FUNC7(clone);
}