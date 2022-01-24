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
struct timer_list {int dummy; } ;
struct mddev {int safemode; int /*<<< orphan*/  thread; int /*<<< orphan*/  sysfs_state; scalar_t__ external; } ;

/* Variables and functions */
 struct mddev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mddev* mddev ; 
 int /*<<< orphan*/  safemode_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct mddev *mddev = FUNC0(mddev, t, safemode_timer);

	mddev->safemode = 1;
	if (mddev->external)
		FUNC2(mddev->sysfs_state);

	FUNC1(mddev->thread);
}