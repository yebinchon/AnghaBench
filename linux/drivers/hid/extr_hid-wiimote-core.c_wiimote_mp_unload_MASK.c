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
struct TYPE_2__ {int mp; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct wiimod_ops {int /*<<< orphan*/  (* remove ) (struct wiimod_ops const*,struct wiimote_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  WIIPROTO_FLAG_MP_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimod_ops const*,struct wiimote_data*) ; 
 struct wiimod_ops wiimod_mp ; 

__attribute__((used)) static void FUNC3(struct wiimote_data *wdata)
{
	unsigned long flags;
	const struct wiimod_ops *ops;

	if (wdata->state.mp < 2)
		return;

	ops = &wiimod_mp;

	FUNC0(&wdata->state.lock, flags);
	wdata->state.mp = 0;
	wdata->state.flags &= ~WIIPROTO_FLAG_MP_USED;
	FUNC1(&wdata->state.lock, flags);

	if (ops->remove)
		ops->remove(ops, wdata);
}