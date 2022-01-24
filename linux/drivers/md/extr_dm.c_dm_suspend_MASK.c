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
struct mapped_device {int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  map; int /*<<< orphan*/  flags; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_SUSPENDED ; 
 int /*<<< orphan*/  DMF_SUSPENDED_INTERNALLY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int FUNC0 (struct mapped_device*,struct dm_table*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mapped_device*) ; 
 scalar_t__ FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct dm_table* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct mapped_device *md, unsigned suspend_flags)
{
	struct dm_table *map = NULL;
	int r = 0;

retry:
	FUNC5(&md->suspend_lock, SINGLE_DEPTH_NESTING);

	if (FUNC2(md)) {
		r = -EINVAL;
		goto out_unlock;
	}

	if (FUNC1(md)) {
		/* already internally suspended, wait for internal resume */
		FUNC6(&md->suspend_lock);
		r = FUNC8(&md->flags, DMF_SUSPENDED_INTERNALLY, TASK_INTERRUPTIBLE);
		if (r)
			return r;
		goto retry;
	}

	map = FUNC7(md->map, FUNC4(&md->suspend_lock));

	r = FUNC0(md, map, suspend_flags, TASK_INTERRUPTIBLE, DMF_SUSPENDED);
	if (r)
		goto out_unlock;

	FUNC3(map);

out_unlock:
	FUNC6(&md->suspend_lock);
	return r;
}