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
 int /*<<< orphan*/  WIIPROTO_FLAG_EXT_USED ; 
 int /*<<< orphan*/  WIIPROTO_REQ_NULL ; 
 struct wiimote_data* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct input_dev *dev)
{
	struct wiimote_data *wdata = FUNC0(dev);
	unsigned long flags;

	FUNC1(&wdata->state.lock, flags);
	wdata->state.flags &= ~WIIPROTO_FLAG_EXT_USED;
	FUNC3(wdata, WIIPROTO_REQ_NULL);
	FUNC2(&wdata->state.lock, flags);
}