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
struct mapped_device {int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  map; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_SUSPENDED ; 
 int /*<<< orphan*/  DMF_SUSPENDED_INTERNALLY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int FUNC0 (struct mapped_device*,struct dm_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct dm_table* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct mapped_device *md)
{
	int r;
	struct dm_table *map = NULL;

retry:
	r = -EINVAL;
	FUNC6(&md->suspend_lock, SINGLE_DEPTH_NESTING);

	if (!FUNC3(md))
		goto out;

	if (FUNC2(md)) {
		/* already internally suspended, wait for internal resume */
		FUNC7(&md->suspend_lock);
		r = FUNC9(&md->flags, DMF_SUSPENDED_INTERNALLY, TASK_INTERRUPTIBLE);
		if (r)
			return r;
		goto retry;
	}

	map = FUNC8(md->map, FUNC5(&md->suspend_lock));
	if (!map || !FUNC4(map))
		goto out;

	r = FUNC0(md, map);
	if (r)
		goto out;

	FUNC1(DMF_SUSPENDED, &md->flags);
out:
	FUNC7(&md->suspend_lock);

	return r;
}