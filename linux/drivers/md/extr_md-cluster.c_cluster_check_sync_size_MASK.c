#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nodes; } ;
struct mddev {struct bitmap* bitmap; TYPE_1__ bitmap_info; } ;
struct dlm_lock_resource {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  sb_page; } ;
struct bitmap {TYPE_2__ storage; } ;
struct TYPE_9__ {unsigned long sync_size; } ;
typedef  TYPE_3__ bitmap_super_t ;
struct TYPE_10__ {int (* slot_number ) (struct mddev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_NOQUEUE ; 
 int /*<<< orphan*/  DLM_LOCK_PW ; 
 scalar_t__ FUNC0 (struct bitmap*) ; 
 int FUNC1 (struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 struct bitmap* FUNC2 (struct mddev*,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_lock_resource*) ; 
 struct dlm_lock_resource* FUNC6 (struct mddev*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC8 (struct bitmap*) ; 
 TYPE_4__* md_cluster_ops ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int FUNC11 (struct mddev*) ; 

__attribute__((used)) static int FUNC12(struct mddev *mddev)
{
	int i, rv;
	bitmap_super_t *sb;
	unsigned long my_sync_size, sync_size = 0;
	int node_num = mddev->bitmap_info.nodes;
	int current_slot = md_cluster_ops->slot_number(mddev);
	struct bitmap *bitmap = mddev->bitmap;
	char str[64];
	struct dlm_lock_resource *bm_lockres;

	sb = FUNC3(bitmap->storage.sb_page);
	my_sync_size = sb->sync_size;
	FUNC4(sb);

	for (i = 0; i < node_num; i++) {
		if (i == current_slot)
			continue;

		bitmap = FUNC2(mddev, i);
		if (FUNC0(bitmap)) {
			FUNC9("can't get bitmap from slot %d\n", i);
			return -1;
		}

		/*
		 * If we can hold the bitmap lock of one node then
		 * the slot is not occupied, update the sb.
		 */
		FUNC10(str, 64, "bitmap%04d", i);
		bm_lockres = FUNC6(mddev, str, NULL, 1);
		if (!bm_lockres) {
			FUNC9("md-cluster: Cannot initialize %s\n", str);
			FUNC7(bitmap);
			return -1;
		}
		bm_lockres->flags |= DLM_LKF_NOQUEUE;
		rv = FUNC1(bm_lockres, DLM_LOCK_PW);
		if (!rv)
			FUNC8(bitmap);
		FUNC5(bm_lockres);

		sb = FUNC3(bitmap->storage.sb_page);
		if (sync_size == 0)
			sync_size = sb->sync_size;
		else if (sync_size != sb->sync_size) {
			FUNC4(sb);
			FUNC7(bitmap);
			return -1;
		}
		FUNC4(sb);
		FUNC7(bitmap);
	}

	return (my_sync_size == sync_size) ? 0 : -1;
}