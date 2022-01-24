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
typedef  int /*<<< orphan*/  u_long ;
struct timer_list {int dummy; } ;
struct mISDNtimer {scalar_t__ id; TYPE_1__* dev; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  expired; } ;

/* Variables and functions */
 struct mISDNtimer* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mISDNtimer* timer ; 
 int /*<<< orphan*/  tl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct timer_list *t)
{
	struct mISDNtimer *timer = FUNC0(timer, t, tl);
	u_long			flags;

	FUNC2(&timer->dev->lock, flags);
	if (timer->id >= 0)
		FUNC1(&timer->list, &timer->dev->expired);
	FUNC4(&timer->dev->wait);
	FUNC3(&timer->dev->lock, flags);
}