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
struct mddev {int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; int /*<<< orphan*/  recovery_wait; int /*<<< orphan*/  recovery_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_ERROR ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mddev *mddev, int blocks, int ok)
{
	/* another "blocks" (512byte) blocks have been synced */
	FUNC0(blocks, &mddev->recovery_active);
	FUNC3(&mddev->recovery_wait);
	if (!ok) {
		FUNC2(MD_RECOVERY_INTR, &mddev->recovery);
		FUNC2(MD_RECOVERY_ERROR, &mddev->recovery);
		FUNC1(mddev->thread);
		// stop recovery, signal do_sync ....
	}
}