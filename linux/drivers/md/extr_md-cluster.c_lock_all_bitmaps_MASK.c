#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nodes; } ;
struct mddev {TYPE_1__ bitmap_info; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {TYPE_2__** other_bitmap_lockres; } ;
struct dlm_lock_resource {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_NOQUEUE ; 
 int /*<<< orphan*/  DLM_LOCK_PW ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__** FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct mddev*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC7(struct mddev *mddev)
{
	int slot, my_slot, ret, held = 1, i = 0;
	char str[64];
	struct md_cluster_info *cinfo = mddev->cluster_info;

	cinfo->other_bitmap_lockres =
		FUNC1(mddev->bitmap_info.nodes - 1,
			sizeof(struct dlm_lock_resource *), GFP_KERNEL);
	if (!cinfo->other_bitmap_lockres) {
		FUNC4("md: can't alloc mem for other bitmap locks\n");
		return 0;
	}

	my_slot = FUNC5(mddev);
	for (slot = 0; slot < mddev->bitmap_info.nodes; slot++) {
		if (slot == my_slot)
			continue;

		FUNC3(str, '\0', 64);
		FUNC6(str, 64, "bitmap%04d", slot);
		cinfo->other_bitmap_lockres[i] = FUNC2(mddev, str, NULL, 1);
		if (!cinfo->other_bitmap_lockres[i])
			return -ENOMEM;

		cinfo->other_bitmap_lockres[i]->flags |= DLM_LKF_NOQUEUE;
		ret = FUNC0(cinfo->other_bitmap_lockres[i], DLM_LOCK_PW);
		if (ret)
			held = -1;
		i++;
	}

	return held;
}