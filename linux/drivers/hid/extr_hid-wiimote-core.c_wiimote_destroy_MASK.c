#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  worker; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct wiimote_data {TYPE_3__* hdev; TYPE_2__ queue; int /*<<< orphan*/  timer; int /*<<< orphan*/  init_worker; TYPE_1__ state; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIIPROTO_FLAG_EXITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_devtype ; 
 int /*<<< orphan*/  dev_attr_extension ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct wiimote_data*) ; 

__attribute__((used)) static void FUNC12(struct wiimote_data *wdata)
{
	unsigned long flags;

	FUNC8(wdata);

	/* prevent init_worker from being scheduled again */
	FUNC6(&wdata->state.lock, flags);
	wdata->state.flags |= WIIPROTO_FLAG_EXITING;
	FUNC7(&wdata->state.lock, flags);

	FUNC0(&wdata->init_worker);
	FUNC1(&wdata->timer);

	FUNC2(&wdata->hdev->dev, &dev_attr_devtype);
	FUNC2(&wdata->hdev->dev, &dev_attr_extension);

	FUNC11(wdata);
	FUNC9(wdata);
	FUNC10(wdata);
	FUNC0(&wdata->queue.worker);
	FUNC3(wdata->hdev);
	FUNC4(wdata->hdev);

	FUNC5(wdata);
}