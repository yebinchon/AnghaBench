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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct wiimod_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIIPROTO_FLAG_BUILTIN_MP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(const struct wiimod_ops *ops,
				     struct wiimote_data *wdata)
{
	unsigned long flags;

	FUNC0(&wdata->state.lock, flags);
	wdata->state.flags |= WIIPROTO_FLAG_BUILTIN_MP;
	FUNC1(&wdata->state.lock, flags);
}