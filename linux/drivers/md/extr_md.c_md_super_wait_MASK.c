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
struct mddev {int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  sb_wait; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  MD_SB_NEED_REWRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct mddev *mddev)
{
	/* wait for all superblock writes that were scheduled to complete */
	FUNC2(mddev->sb_wait, FUNC0(&mddev->pending_writes)==0);
	if (FUNC1(MD_SB_NEED_REWRITE, &mddev->sb_flags))
		return -EAGAIN;
	return 0;
}