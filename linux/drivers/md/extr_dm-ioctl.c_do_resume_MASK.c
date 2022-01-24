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
struct mapped_device {int dummy; } ;
struct hash_cell {struct dm_table* new_map; struct mapped_device* md; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; int /*<<< orphan*/  event_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DM_INACTIVE_PRESENT_FLAG ; 
 int DM_NOFLUSH_FLAG ; 
 int DM_SKIP_LOCKFS_FLAG ; 
 unsigned int DM_SUSPEND_LOCKFS_FLAG ; 
 unsigned int DM_SUSPEND_NOFLUSH_FLAG ; 
 int DM_UEVENT_GENERATED_FLAG ; 
 int ENXIO ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC1 (struct dm_table*) ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int FUNC2 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*,struct dm_ioctl*) ; 
 struct hash_cell* FUNC4 (struct dm_ioctl*) ; 
 int /*<<< orphan*/  _hash_lock ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mapped_device*) ; 
 int FUNC8 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mapped_device*,unsigned int) ; 
 scalar_t__ FUNC10 (struct mapped_device*) ; 
 struct dm_table* FUNC11 (struct mapped_device*,struct dm_table*) ; 
 int /*<<< orphan*/  FUNC12 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_table*) ; 
 int FUNC14 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct dm_ioctl *param)
{
	int r = 0;
	unsigned suspend_flags = DM_SUSPEND_LOCKFS_FLAG;
	struct hash_cell *hc;
	struct mapped_device *md;
	struct dm_table *new_map, *old_map = NULL;

	FUNC15(&_hash_lock);

	hc = FUNC4(param);
	if (!hc) {
		FUNC0("device doesn't appear to be in the dev hash table.");
		FUNC17(&_hash_lock);
		return -ENXIO;
	}

	md = hc->md;

	new_map = hc->new_map;
	hc->new_map = NULL;
	param->flags &= ~DM_INACTIVE_PRESENT_FLAG;

	FUNC17(&_hash_lock);

	/* Do we need to load a new map ? */
	if (new_map) {
		/* Suspend if it isn't already suspended */
		if (param->flags & DM_SKIP_LOCKFS_FLAG)
			suspend_flags &= ~DM_SUSPEND_LOCKFS_FLAG;
		if (param->flags & DM_NOFLUSH_FLAG)
			suspend_flags |= DM_SUSPEND_NOFLUSH_FLAG;
		if (!FUNC10(md))
			FUNC9(md, suspend_flags);

		old_map = FUNC11(md, new_map);
		if (FUNC1(old_map)) {
			FUNC12(md);
			FUNC13(new_map);
			FUNC7(md);
			return FUNC2(old_map);
		}

		if (FUNC14(new_map) & FMODE_WRITE)
			FUNC16(FUNC5(md), 0);
		else
			FUNC16(FUNC5(md), 1);
	}

	if (FUNC10(md)) {
		r = FUNC8(md);
		if (!r && !FUNC6(md, KOBJ_CHANGE, param->event_nr))
			param->flags |= DM_UEVENT_GENERATED_FLAG;
	}

	/*
	 * Since dm_swap_table synchronizes RCU, nobody should be in
	 * read-side critical section already.
	 */
	if (old_map)
		FUNC13(old_map);

	if (!r)
		FUNC3(md, param);

	FUNC7(md);
	return r;
}