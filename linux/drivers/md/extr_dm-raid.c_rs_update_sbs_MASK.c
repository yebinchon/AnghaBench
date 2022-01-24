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
struct mddev {int ro; int /*<<< orphan*/  sb_flags; } ;
struct raid_set {struct mddev md; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct raid_set *rs)
{
	struct mddev *mddev = &rs->md;
	int ro = mddev->ro;

	FUNC1(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
	mddev->ro = 0;
	FUNC0(mddev, 1);
	mddev->ro = ro;
}