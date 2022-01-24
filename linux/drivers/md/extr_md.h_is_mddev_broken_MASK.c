#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct md_rdev {TYPE_3__* mddev; TYPE_2__* bdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {TYPE_1__* bd_disk; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int GENHD_FL_UP ; 
 int /*<<< orphan*/  MD_BROKEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC3(struct md_rdev *rdev, const char *md_type)
{
	int flags = rdev->bdev->bd_disk->flags;

	if (!(flags & GENHD_FL_UP)) {
		if (!FUNC2(MD_BROKEN, &rdev->mddev->flags))
			FUNC1("md: %s: %s array has a missing/failed member\n",
				FUNC0(rdev->mddev), md_type);
		return true;
	}
	return false;
}