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
struct md_rdev {int sb_loaded; int /*<<< orphan*/  bdev; int /*<<< orphan*/  sb_page; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct md_rdev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct md_rdev *rdev, int size)
{
	char b[BDEVNAME_SIZE];

	if (rdev->sb_loaded)
		return 0;

	if (!FUNC2(rdev, 0, size, rdev->sb_page, REQ_OP_READ, 0, true))
		goto fail;
	rdev->sb_loaded = 1;
	return 0;

fail:
	FUNC1("md: disabled device %s, could not read superblock.\n",
	       FUNC0(rdev->bdev,b));
	return -EINVAL;
}