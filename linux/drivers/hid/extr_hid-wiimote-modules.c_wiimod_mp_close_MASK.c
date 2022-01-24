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
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIIPROTO_FLAG_MP_USED ; 
 int /*<<< orphan*/  WIIPROTO_REQ_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct wiimote_data*) ; 
 struct wiimote_data* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct input_dev *dev)
{
	struct wiimote_data *wdata = FUNC1(dev);
	unsigned long flags;

	FUNC2(&wdata->state.lock, flags);
	wdata->state.flags &= ~WIIPROTO_FLAG_MP_USED;
	FUNC4(wdata, WIIPROTO_REQ_NULL);
	FUNC0(wdata);
	FUNC3(&wdata->state.lock, flags);
}