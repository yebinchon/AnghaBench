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
struct mapped_device {int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  map; int /*<<< orphan*/  flags; int /*<<< orphan*/  internal_suspend_count; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_SUSPENDED_INTERNALLY ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct mapped_device*,struct dm_table*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dm_table* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mapped_device *md, unsigned suspend_flags)
{
	struct dm_table *map = NULL;

	FUNC3(&md->suspend_lock);

	if (md->internal_suspend_count++)
		return; /* nested internal suspend */

	if (FUNC1(md)) {
		FUNC6(DMF_SUSPENDED_INTERNALLY, &md->flags);
		return; /* nest suspend */
	}

	map = FUNC5(md->map, FUNC4(&md->suspend_lock));

	/*
	 * Using TASK_UNINTERRUPTIBLE because only NOFLUSH internal suspend is
	 * supported.  Properly supporting a TASK_INTERRUPTIBLE internal suspend
	 * would require changing .presuspend to return an error -- avoid this
	 * until there is a need for more elaborate variants of internal suspend.
	 */
	(void) FUNC0(md, map, suspend_flags, TASK_UNINTERRUPTIBLE,
			    DMF_SUSPENDED_INTERNALLY);

	FUNC2(map);
}