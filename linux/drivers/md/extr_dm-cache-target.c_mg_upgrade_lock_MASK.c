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
struct work_struct {int dummy; } ;
struct TYPE_3__ {scalar_t__ input; } ;
struct dm_cache_migration {int /*<<< orphan*/  cell; TYPE_2__* cache; TYPE_1__ k; } ;
struct TYPE_4__ {int /*<<< orphan*/  prison; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_WRITE_LOCK_LEVEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_migration*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_cache_migration*,int /*<<< orphan*/  (*) (struct work_struct*)) ; 
 struct dm_cache_migration* FUNC4 (struct work_struct*) ; 

__attribute__((used)) static void FUNC5(struct work_struct *ws)
{
	int r;
	struct dm_cache_migration *mg = FUNC4(ws);

	/*
	 * Did the copy succeed?
	 */
	if (mg->k.input)
		FUNC1(mg, false);

	else {
		/*
		 * Now we want the lock to prevent both reads and writes.
		 */
		r = FUNC0(mg->cache->prison, mg->cell,
					    READ_WRITE_LOCK_LEVEL);
		if (r < 0)
			FUNC1(mg, false);

		else if (r)
			FUNC3(mg, mg_update_metadata);

		else
			FUNC2(ws);
	}
}