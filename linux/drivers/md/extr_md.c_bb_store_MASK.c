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
struct md_rdev {int /*<<< orphan*/  blocked_wait; int /*<<< orphan*/  flags; int /*<<< orphan*/  badblocks; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BlockedBadBlocks ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct md_rdev *rdev, const char *page, size_t len)
{
	int rv = FUNC0(&rdev->badblocks, page, len, 0);
	/* Maybe that ack was all we needed */
	if (FUNC1(BlockedBadBlocks, &rdev->flags))
		FUNC2(&rdev->blocked_wait);
	return rv;
}