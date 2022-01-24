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
struct chcr_dev {int /*<<< orphan*/  inflight; int /*<<< orphan*/  wqretry; int /*<<< orphan*/  state; int /*<<< orphan*/  detach_comp; int /*<<< orphan*/  detach_work; int /*<<< orphan*/  lock_chcr_dev; } ;
struct uld_ctx {int /*<<< orphan*/  entry; struct chcr_dev dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  drv_mutex; struct uld_ctx* last_dev; int /*<<< orphan*/  inact_dev; int /*<<< orphan*/  dev_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHCR_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_RETRY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  detach_work_fn ; 
 TYPE_1__ drv_data ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct uld_ctx *u_ctx)
{
	struct chcr_dev *dev;

	dev = &u_ctx->dev;
	FUNC7(&dev->lock_chcr_dev);
	FUNC0(&dev->detach_work, detach_work_fn);
	FUNC3(&dev->detach_comp);
	dev->state = CHCR_INIT;
	dev->wqretry = WQ_RETRY;
	FUNC1(&drv_data.dev_count);
	FUNC2(&dev->inflight, 0);
	FUNC5(&drv_data.drv_mutex);
	FUNC4(&u_ctx->entry, &drv_data.inact_dev);
	if (!drv_data.last_dev)
		drv_data.last_dev = u_ctx;
	FUNC6(&drv_data.drv_mutex);
}