#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_write_behind; } ;
struct mddev {int /*<<< orphan*/ * wb_info_pool; TYPE_1__ bitmap_info; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_WB_INFOS ; 
 int /*<<< orphan*/  WriteMostly ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct mddev *mddev, struct md_rdev *rdev,
			  bool is_suspend)
{
	if (mddev->bitmap_info.max_write_behind == 0)
		return;

	if (!FUNC7(WriteMostly, &rdev->flags) || !FUNC6(rdev))
		return;

	if (mddev->wb_info_pool == NULL) {
		unsigned int noio_flag;

		if (!is_suspend)
			FUNC1(mddev);
		noio_flag = FUNC3();
		mddev->wb_info_pool = FUNC4(NR_WB_INFOS,
							sizeof(struct wb_info));
		FUNC2(noio_flag);
		if (!mddev->wb_info_pool)
			FUNC5("can't alloc memory pool for writemostly\n");
		if (!is_suspend)
			FUNC0(mddev);
	}
}