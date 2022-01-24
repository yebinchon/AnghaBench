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
struct gendisk {int dummy; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; void* target_count; int /*<<< orphan*/  event_nr; int /*<<< orphan*/  open_count; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DM_ACTIVE_PRESENT_FLAG ; 
 int DM_DEFERRED_REMOVE ; 
 int DM_INTERNAL_SUSPEND_FLAG ; 
 int DM_QUERY_INACTIVE_TABLE_FLAG ; 
 int DM_READONLY_FLAG ; 
 int DM_SUSPEND_FLAG ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 struct gendisk* FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 struct dm_table* FUNC3 (struct mapped_device*,int*) ; 
 struct dm_table* FUNC4 (struct mapped_device*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*,int) ; 
 scalar_t__ FUNC7 (struct mapped_device*) ; 
 scalar_t__ FUNC8 (struct mapped_device*) ; 
 int FUNC9 (struct dm_table*) ; 
 void* FUNC10 (struct dm_table*) ; 
 scalar_t__ FUNC11 (struct mapped_device*) ; 
 scalar_t__ FUNC12 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct mapped_device *md, struct dm_ioctl *param)
{
	struct gendisk *disk = FUNC1(md);
	struct dm_table *table;
	int srcu_idx;

	param->flags &= ~(DM_SUSPEND_FLAG | DM_READONLY_FLAG |
			  DM_ACTIVE_PRESENT_FLAG | DM_INTERNAL_SUSPEND_FLAG);

	if (FUNC8(md))
		param->flags |= DM_SUSPEND_FLAG;

	if (FUNC7(md))
		param->flags |= DM_INTERNAL_SUSPEND_FLAG;

	if (FUNC11(md))
		param->flags |= DM_DEFERRED_REMOVE;

	param->dev = FUNC13(FUNC0(disk));

	/*
	 * Yes, this will be out of date by the time it gets back
	 * to userland, but it is still very useful for
	 * debugging.
	 */
	param->open_count = FUNC5(md);

	param->event_nr = FUNC2(md);
	param->target_count = 0;

	table = FUNC4(md, &srcu_idx);
	if (table) {
		if (!(param->flags & DM_QUERY_INACTIVE_TABLE_FLAG)) {
			if (FUNC12(disk))
				param->flags |= DM_READONLY_FLAG;
			param->target_count = FUNC10(table);
		}

		param->flags |= DM_ACTIVE_PRESENT_FLAG;
	}
	FUNC6(md, srcu_idx);

	if (param->flags & DM_QUERY_INACTIVE_TABLE_FLAG) {
		int srcu_idx;
		table = FUNC3(md, &srcu_idx);
		if (table) {
			if (!(FUNC9(table) & FMODE_WRITE))
				param->flags |= DM_READONLY_FLAG;
			param->target_count = FUNC10(table);
		}
		FUNC6(md, srcu_idx);
	}
}