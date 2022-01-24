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
struct dm_target {struct cache* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  in_flight; } ;
struct cache {TYPE_1__ tracker; int /*<<< orphan*/  wq; int /*<<< orphan*/  waker; int /*<<< orphan*/  nr_io_migrations; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CM_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cache*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache*) ; 
 int /*<<< orphan*/  FUNC7 (struct cache*) ; 
 int /*<<< orphan*/  FUNC8 (struct cache*) ; 

__attribute__((used)) static void FUNC9(struct dm_target *ti)
{
	struct cache *cache = ti->private;

	FUNC6(cache);
	FUNC0(FUNC2(&cache->nr_io_migrations));

	FUNC3(&cache->waker);
	FUNC4(cache->wq);
	FUNC1(cache->tracker.in_flight);

	/*
	 * If it's a flush suspend there won't be any deferred bios, so this
	 * call is harmless.
	 */
	FUNC7(cache);

	if (FUNC5(cache) == CM_WRITE)
		(void) FUNC8(cache);
}