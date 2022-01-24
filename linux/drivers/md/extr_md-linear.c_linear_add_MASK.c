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
struct mddev {scalar_t__ raid_disks; int /*<<< orphan*/  gendisk; int /*<<< orphan*/  array_sectors; int /*<<< orphan*/  private; int /*<<< orphan*/  reconfig_mutex; } ;
struct md_rdev {scalar_t__ saved_raid_disk; scalar_t__ raid_disk; } ;
struct linear_conf {scalar_t__ raid_disks; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct linear_conf*,int /*<<< orphan*/ ) ; 
 struct linear_conf* FUNC2 (struct mddev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct linear_conf*) ; 
 struct linear_conf* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mddev *mddev, struct md_rdev *rdev)
{
	/* Adding a drive to a linear array allows the array to grow.
	 * It is permitted if the new drive has a matching superblock
	 * already on it, with raid_disk equal to raid_disks.
	 * It is achieved by creating a new linear_private_data structure
	 * and swapping it in in-place of the current one.
	 * The current one is never freed until the array is stopped.
	 * This avoids races.
	 */
	struct linear_conf *newconf, *oldconf;

	if (rdev->saved_raid_disk != mddev->raid_disks)
		return -EINVAL;

	rdev->raid_disk = rdev->saved_raid_disk;
	rdev->saved_raid_disk = -1;

	newconf = FUNC2(mddev,mddev->raid_disks+1);

	if (!newconf)
		return -ENOMEM;

	/* newconf->raid_disks already keeps a copy of * the increased
	 * value of mddev->raid_disks, WARN_ONCE() is just used to make
	 * sure of this. It is possible that oldconf is still referenced
	 * in linear_congested(), therefore kfree_rcu() is used to free
	 * oldconf until no one uses it anymore.
	 */
	FUNC7(mddev);
	oldconf = FUNC9(mddev->private,
			FUNC4(&mddev->reconfig_mutex));
	mddev->raid_disks++;
	FUNC0(mddev->raid_disks != newconf->raid_disks,
		"copied raid_disks doesn't match mddev->raid_disks");
	FUNC8(mddev->private, newconf);
	FUNC5(mddev, FUNC3(mddev, 0, 0));
	FUNC11(mddev->gendisk, mddev->array_sectors);
	FUNC6(mddev);
	FUNC10(mddev->gendisk);
	FUNC1(oldconf, rcu);
	return 0;
}