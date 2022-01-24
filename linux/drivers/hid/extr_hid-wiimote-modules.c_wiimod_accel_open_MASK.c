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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct wiimote_data* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_data*,int) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev)
{
	struct wiimote_data *wdata = FUNC0(dev);
	unsigned long flags;

	FUNC1(&wdata->state.lock, flags);
	FUNC3(wdata, true);
	FUNC2(&wdata->state.lock, flags);

	return 0;
}