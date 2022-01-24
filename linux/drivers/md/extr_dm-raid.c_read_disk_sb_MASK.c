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
struct md_rdev {int sb_loaded; int /*<<< orphan*/  flags; int /*<<< orphan*/  mddev; int /*<<< orphan*/  raid_disk; int /*<<< orphan*/  sb_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct md_rdev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct md_rdev *rdev, int size, bool force_reload)
{
	FUNC0(!rdev->sb_page);

	if (rdev->sb_loaded && !force_reload)
		return 0;

	rdev->sb_loaded = 0;

	if (!FUNC4(rdev, 0, size, rdev->sb_page, REQ_OP_READ, 0, true)) {
		FUNC1("Failed to read superblock of device at position %d",
		      rdev->raid_disk);
		FUNC2(rdev->mddev, rdev);
		FUNC3(Faulty, &rdev->flags);
		return -EIO;
	}

	rdev->sb_loaded = 1;

	return 0;
}