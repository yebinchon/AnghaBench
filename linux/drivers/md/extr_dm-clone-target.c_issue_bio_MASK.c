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
struct clone {int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_flush_bios; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ CM_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct clone*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 scalar_t__ FUNC4 (struct clone*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct clone*) ; 

__attribute__((used)) static void FUNC9(struct clone *clone, struct bio *bio)
{
	unsigned long flags;

	if (!FUNC2(clone, bio)) {
		FUNC3(bio);
		return;
	}

	/*
	 * If the metadata mode is RO or FAIL we won't be able to commit the
	 * metadata, so we complete the bio with an error.
	 */
	if (FUNC7(FUNC4(clone) >= CM_READ_ONLY)) {
		FUNC0(bio);
		return;
	}

	/*
	 * Batch together any bios that trigger commits and then issue a single
	 * commit for them in process_deferred_flush_bios().
	 */
	FUNC5(&clone->lock, flags);
	FUNC1(&clone->deferred_flush_bios, bio);
	FUNC6(&clone->lock, flags);

	FUNC8(clone);
}