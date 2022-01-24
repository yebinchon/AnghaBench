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
struct clone {unsigned long nr_regions; int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_discard_bios; int /*<<< orphan*/  cmd; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CM_READ_ONLY ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct clone*,struct bio*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct clone*,struct bio*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (struct clone*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct clone*) ; 

__attribute__((used)) static void FUNC11(struct clone *clone, struct bio *bio)
{
	unsigned long rs, re, flags;

	FUNC3(clone, bio, &rs, &re);
	FUNC0(re > clone->nr_regions);

	if (FUNC9(rs == re)) {
		FUNC1(bio);
		return;
	}

	/*
	 * The covered regions are already hydrated so we just need to pass
	 * down the discard.
	 */
	if (FUNC5(clone->cmd, rs, re - rs)) {
		FUNC4(clone, bio, true);
		return;
	}

	/*
	 * If the metadata mode is RO or FAIL we won't be able to update the
	 * metadata for the regions covered by the discard so we just ignore
	 * it.
	 */
	if (FUNC9(FUNC6(clone) >= CM_READ_ONLY)) {
		FUNC1(bio);
		return;
	}

	/*
	 * Defer discard processing.
	 */
	FUNC7(&clone->lock, flags);
	FUNC2(&clone->deferred_discard_bios, bio);
	FUNC8(&clone->lock, flags);

	FUNC10(clone);
}