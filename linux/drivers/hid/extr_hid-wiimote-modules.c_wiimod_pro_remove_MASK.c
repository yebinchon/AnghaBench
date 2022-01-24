#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/ * input; } ;
struct wiimote_data {TYPE_2__ state; TYPE_1__* hdev; int /*<<< orphan*/  rumble_worker; TYPE_3__ extension; } ;
struct wiimod_ops {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_pro_calib ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct wiimod_ops *ops,
			      struct wiimote_data *wdata)
{
	unsigned long flags;

	if (!wdata->extension.input)
		return;

	FUNC2(wdata->extension.input);
	wdata->extension.input = NULL;
	FUNC0(&wdata->rumble_worker);
	FUNC1(&wdata->hdev->dev,
			   &dev_attr_pro_calib);

	FUNC3(&wdata->state.lock, flags);
	FUNC5(wdata, 0);
	FUNC4(&wdata->state.lock, flags);
}