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
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ need_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct mddev *mddev, char *page)
{
	int len;
	FUNC0(&mddev->lock);
	if (mddev->bitmap)
		len = FUNC2(page, "%s\n", (mddev->bitmap->need_sync ?
					     "false" : "true"));
	else
		len = FUNC2(page, "\n");
	FUNC1(&mddev->lock);
	return len;
}