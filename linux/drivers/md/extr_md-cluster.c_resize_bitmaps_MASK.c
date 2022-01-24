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
struct TYPE_3__ {int nodes; } ;
struct mddev {TYPE_1__ bitmap_info; struct bitmap* bitmap; } ;
struct dlm_lock_resource {int /*<<< orphan*/  flags; } ;
struct bitmap_counts {unsigned long pages; } ;
struct bitmap {struct bitmap_counts counts; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_4__ {int (* slot_number ) (struct mddev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_NOQUEUE ; 
 int /*<<< orphan*/  DLM_LOCK_PW ; 
 scalar_t__ FUNC0 (struct bitmap*) ; 
 int FUNC1 (struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 struct bitmap* FUNC2 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lock_resource*) ; 
 struct dlm_lock_resource* FUNC4 (struct mddev*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bitmap*) ; 
 TYPE_2__* md_cluster_ops ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int FUNC8 (struct mddev*) ; 
 int FUNC9 (struct mddev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct mddev *mddev, sector_t newsize, sector_t oldsize)
{
	struct bitmap_counts *counts;
	char str[64];
	struct dlm_lock_resource *bm_lockres;
	struct bitmap *bitmap = mddev->bitmap;
	unsigned long my_pages = bitmap->counts.pages;
	int i, rv;

	/*
	 * We need to ensure all the nodes can grow to a larger
	 * bitmap size before make the reshaping.
	 */
	rv = FUNC9(mddev, newsize);
	if (rv)
		return rv;

	for (i = 0; i < mddev->bitmap_info.nodes; i++) {
		if (i == md_cluster_ops->slot_number(mddev))
			continue;

		bitmap = FUNC2(mddev, i);
		if (FUNC0(bitmap)) {
			FUNC6("can't get bitmap from slot %d\n", i);
			goto out;
		}
		counts = &bitmap->counts;

		/*
		 * If we can hold the bitmap lock of one node then
		 * the slot is not occupied, update the pages.
		 */
		FUNC7(str, 64, "bitmap%04d", i);
		bm_lockres = FUNC4(mddev, str, NULL, 1);
		if (!bm_lockres) {
			FUNC6("Cannot initialize %s lock\n", str);
			goto out;
		}
		bm_lockres->flags |= DLM_LKF_NOQUEUE;
		rv = FUNC1(bm_lockres, DLM_LOCK_PW);
		if (!rv)
			counts->pages = my_pages;
		FUNC3(bm_lockres);

		if (my_pages != counts->pages)
			/*
			 * Let's revert the bitmap size if one node
			 * can't resize bitmap
			 */
			goto out;
	}

	return 0;
out:
	FUNC5(bitmap);
	FUNC9(mddev, oldsize);
	return -1;
}