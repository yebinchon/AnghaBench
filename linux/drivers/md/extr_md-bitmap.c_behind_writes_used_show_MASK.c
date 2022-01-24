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
struct mddev {int /*<<< orphan*/  lock; TYPE_1__* bitmap; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  behind_writes_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t
FUNC3(struct mddev *mddev, char *page)
{
	ssize_t ret;
	FUNC0(&mddev->lock);
	if (mddev->bitmap == NULL)
		ret = FUNC2(page, "0\n");
	else
		ret = FUNC2(page, "%lu\n",
			      mddev->bitmap->behind_writes_used);
	FUNC1(&mddev->lock);
	return ret;
}