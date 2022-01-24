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
struct msc_window {int lockout; int /*<<< orphan*/  lo_lock; TYPE_1__* msc; } ;
typedef  enum lockout_state { ____Placeholder_lockout_state } lockout_state ;
struct TYPE_2__ {int /*<<< orphan*/  user_count; int /*<<< orphan*/  mbuf; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int WIN_LOCKED ; 
 int WIN_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct msc_window *win,
			       enum lockout_state expect,
			       enum lockout_state new)
{
	enum lockout_state old;
	unsigned long flags;
	int ret = 0;

	if (!win->msc->mbuf)
		return 0;

	FUNC4(&win->lo_lock, flags);
	old = win->lockout;

	if (old != expect) {
		ret = -EINVAL;
		FUNC2(FUNC3(win->msc),
				     "expected lockout state %d, got %d\n",
				     expect, old);
		goto unlock;
	}

	win->lockout = new;

	if (old == expect && new == WIN_LOCKED)
		FUNC1(&win->msc->user_count);
	else if (old == expect && old == WIN_LOCKED)
		FUNC0(&win->msc->user_count);

unlock:
	FUNC5(&win->lo_lock, flags);

	if (ret) {
		if (expect == WIN_READY && old == WIN_LOCKED)
			return -EBUSY;

		/* from intel_th_msc_window_unlock(), don't warn if not locked */
		if (expect == WIN_LOCKED && old == new)
			return 0;
	}

	return ret;
}