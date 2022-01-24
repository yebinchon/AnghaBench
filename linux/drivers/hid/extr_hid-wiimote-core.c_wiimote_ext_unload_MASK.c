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
struct TYPE_2__ {size_t exttype; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct wiimod_ops {int /*<<< orphan*/  (* remove ) (struct wiimod_ops const*,struct wiimote_data*) ;} ;

/* Variables and functions */
 size_t WIIMOTE_EXT_UNKNOWN ; 
 int /*<<< orphan*/  WIIPROTO_FLAG_EXT_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimod_ops const*,struct wiimote_data*) ; 
 struct wiimod_ops** wiimod_ext_table ; 

__attribute__((used)) static void FUNC3(struct wiimote_data *wdata)
{
	unsigned long flags;
	const struct wiimod_ops *ops;

	ops = wiimod_ext_table[wdata->state.exttype];

	FUNC0(&wdata->state.lock, flags);
	wdata->state.exttype = WIIMOTE_EXT_UNKNOWN;
	wdata->state.flags &= ~WIIPROTO_FLAG_EXT_USED;
	FUNC1(&wdata->state.lock, flags);

	if (ops->remove)
		ops->remove(ops, wdata);
}