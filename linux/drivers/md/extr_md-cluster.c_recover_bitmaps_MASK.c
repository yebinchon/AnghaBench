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
typedef  int /*<<< orphan*/  u64 ;
struct mddev {scalar_t__ reshape_position; scalar_t__ recovery_cp; int /*<<< orphan*/  thread; scalar_t__ recovery; int /*<<< orphan*/  sync_thread; struct md_cluster_info* cluster_info; } ;
struct md_thread {struct mddev* mddev; } ;
struct md_cluster_info {int suspend_from; scalar_t__ recovery_map; int /*<<< orphan*/  suspend_lock; scalar_t__ suspend_lo; scalar_t__ suspend_hi; } ;
struct dlm_lock_resource {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_PW ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int MD_RECOVERY_RESHAPE ; 
 int MD_RESYNCING_REMOTE ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 
 int FUNC1 (struct dlm_lock_resource*,int /*<<< orphan*/ ,struct mddev*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lock_resource*) ; 
 struct dlm_lock_resource* FUNC4 (struct mddev*,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct mddev*,int,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int,scalar_t__*) ; 

__attribute__((used)) static void FUNC13(struct md_thread *thread)
{
	struct mddev *mddev = thread->mddev;
	struct md_cluster_info *cinfo = mddev->cluster_info;
	struct dlm_lock_resource *bm_lockres;
	char str[64];
	int slot, ret;
	sector_t lo, hi;

	while (cinfo->recovery_map) {
		slot = FUNC2((u64)cinfo->recovery_map) - 1;

		FUNC9(str, 64, "bitmap%04d", slot);
		bm_lockres = FUNC4(mddev, str, NULL, 1);
		if (!bm_lockres) {
			FUNC7("md-cluster: Cannot initialize bitmaps\n");
			goto clear_bit;
		}

		ret = FUNC1(bm_lockres, DLM_LOCK_PW, mddev);
		if (ret) {
			FUNC7("md-cluster: Could not DLM lock %s: %d\n",
					str, ret);
			goto clear_bit;
		}
		ret = FUNC5(mddev, slot, &lo, &hi, true);
		if (ret) {
			FUNC7("md-cluster: Could not copy data from bitmap %d\n", slot);
			goto clear_bit;
		}

		/* Clear suspend_area associated with the bitmap */
		FUNC10(&cinfo->suspend_lock);
		cinfo->suspend_hi = 0;
		cinfo->suspend_lo = 0;
		cinfo->suspend_from = -1;
		FUNC11(&cinfo->suspend_lock);

		/* Kick off a reshape if needed */
		if (FUNC12(MD_RESYNCING_REMOTE, &mddev->recovery) &&
		    FUNC12(MD_RECOVERY_RESHAPE, &mddev->recovery) &&
		    mddev->reshape_position != MaxSector)
			FUNC6(mddev->sync_thread);

		if (hi > 0) {
			if (lo < mddev->recovery_cp)
				mddev->recovery_cp = lo;
			/* wake up thread to continue resync in case resync
			 * is not finished */
			if (mddev->recovery_cp != MaxSector) {
				/*
				 * clear the REMOTE flag since we will launch
				 * resync thread in current node.
				 */
				FUNC0(MD_RESYNCING_REMOTE,
					  &mddev->recovery);
				FUNC8(MD_RECOVERY_NEEDED, &mddev->recovery);
				FUNC6(mddev->thread);
			}
		}
clear_bit:
		FUNC3(bm_lockres);
		FUNC0(slot, &cinfo->recovery_map);
	}
}