#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cmd_battery; int /*<<< orphan*/  drm; int /*<<< orphan*/  sync; int /*<<< orphan*/  ready; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  worker; int /*<<< orphan*/  lock; } ;
struct wiimote_data {int /*<<< orphan*/  timer; int /*<<< orphan*/  init_worker; TYPE_2__ state; TYPE_1__ queue; struct hid_device* hdev; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIPROTO_REQ_DRM_K ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wiimote_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wiimote_init_timeout ; 
 int /*<<< orphan*/  wiimote_init_worker ; 
 int /*<<< orphan*/  wiimote_queue_worker ; 

__attribute__((used)) static struct wiimote_data *FUNC7(struct hid_device *hdev)
{
	struct wiimote_data *wdata;

	wdata = FUNC3(sizeof(*wdata), GFP_KERNEL);
	if (!wdata)
		return NULL;

	wdata->hdev = hdev;
	FUNC1(hdev, wdata);

	FUNC5(&wdata->queue.lock);
	FUNC0(&wdata->queue.worker, wiimote_queue_worker);

	FUNC5(&wdata->state.lock);
	FUNC2(&wdata->state.ready);
	FUNC4(&wdata->state.sync);
	wdata->state.drm = WIIPROTO_REQ_DRM_K;
	wdata->state.cmd_battery = 0xff;

	FUNC0(&wdata->init_worker, wiimote_init_worker);
	FUNC6(&wdata->timer, wiimote_init_timeout, 0);

	return wdata;
}