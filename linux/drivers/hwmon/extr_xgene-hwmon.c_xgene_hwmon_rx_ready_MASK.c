#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xgene_hwmon_dev {int /*<<< orphan*/  kfifo_lock; int /*<<< orphan*/  async_msg_fifo; int /*<<< orphan*/  resp_pending; int /*<<< orphan*/  hwmon_dev; } ;
struct slimpro_resp_msg {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct xgene_hwmon_dev *ctx, void *msg)
{
	if (FUNC0(ctx->hwmon_dev) && !ctx->resp_pending) {
		/* Enqueue to the FIFO */
		FUNC1(&ctx->async_msg_fifo, msg,
				    sizeof(struct slimpro_resp_msg),
				    &ctx->kfifo_lock);
		return -ENODEV;
	}

	return 0;
}