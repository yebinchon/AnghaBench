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
struct thin_c {int /*<<< orphan*/  td; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_flush_bios; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct thin_c*,struct bio*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct thin_c *tc, struct bio *bio)
{
	struct pool *pool = tc->pool;
	unsigned long flags;

	if (!FUNC2(tc, bio)) {
		FUNC4(bio);
		return;
	}

	/*
	 * Complete bio with an error if earlier I/O caused changes to
	 * the metadata that can't be committed e.g, due to I/O errors
	 * on the metadata device.
	 */
	if (FUNC3(tc->td)) {
		FUNC0(bio);
		return;
	}

	/*
	 * Batch together any bios that trigger commits and then issue a
	 * single commit for them in process_deferred_bios().
	 */
	FUNC5(&pool->lock, flags);
	FUNC1(&pool->deferred_flush_bios, bio);
	FUNC6(&pool->lock, flags);
}