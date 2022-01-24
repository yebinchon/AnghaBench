#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long pages; struct bitmap_page* bp; } ;
struct bitmap_page {scalar_t__ cluster_slot; struct bitmap_page* map; int /*<<< orphan*/  hijacked; TYPE_1__ counts; int /*<<< orphan*/  storage; int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  write_wait; TYPE_2__* mddev; scalar_t__ sysfs_can_clear; } ;
struct bitmap {scalar_t__ cluster_slot; struct bitmap* map; int /*<<< orphan*/  hijacked; TYPE_1__ counts; int /*<<< orphan*/  storage; int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  write_wait; TYPE_2__* mddev; scalar_t__ sysfs_can_clear; } ;
struct TYPE_8__ {scalar_t__ (* slot_number ) (TYPE_2__*) ;} ;
struct TYPE_7__ {scalar_t__ cluster_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap_page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* md_cluster_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void FUNC8(struct bitmap *bitmap)
{
	unsigned long k, pages;
	struct bitmap_page *bp;

	if (!bitmap) /* there was no bitmap */
		return;

	if (bitmap->sysfs_can_clear)
		FUNC6(bitmap->sysfs_can_clear);

	if (FUNC4(bitmap->mddev) && bitmap->mddev->cluster_info &&
		bitmap->cluster_slot == md_cluster_ops->slot_number(bitmap->mddev))
		FUNC3(bitmap->mddev);

	/* Shouldn't be needed - but just in case.... */
	FUNC7(bitmap->write_wait,
		   FUNC0(&bitmap->pending_writes) == 0);

	/* release the bitmap file  */
	FUNC2(&bitmap->storage);

	bp = bitmap->counts.bp;
	pages = bitmap->counts.pages;

	/* free all allocated memory */

	if (bp) /* deallocate the page memory */
		for (k = 0; k < pages; k++)
			if (bp[k].map && !bp[k].hijacked)
				FUNC1(bp[k].map);
	FUNC1(bp);
	FUNC1(bitmap);
}