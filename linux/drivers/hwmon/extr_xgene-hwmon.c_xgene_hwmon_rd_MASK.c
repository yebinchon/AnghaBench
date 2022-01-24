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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  param2; int /*<<< orphan*/  param1; int /*<<< orphan*/  msg; } ;
struct xgene_hwmon_dev {int resp_pending; int /*<<< orphan*/  rd_mutex; TYPE_1__ sync_msg; int /*<<< orphan*/  dev; int /*<<< orphan*/  rd_complete; int /*<<< orphan*/  mbox_chan; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MBOX_OP_TIMEOUTMS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MSG_TYPE_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct xgene_hwmon_dev *ctx, u32 *msg)
{
	int rc;

	FUNC5(&ctx->rd_mutex);
	FUNC2(&ctx->rd_complete);
	ctx->resp_pending = true;

	rc = FUNC3(ctx->mbox_chan, msg);
	if (rc < 0) {
		FUNC1(ctx->dev, "Mailbox send error %d\n", rc);
		goto err;
	}

	if (!FUNC7(&ctx->rd_complete,
					 FUNC4(MBOX_OP_TIMEOUTMS))) {
		FUNC1(ctx->dev, "Mailbox operation timed out\n");
		rc = -ETIMEDOUT;
		goto err;
	}

	/* Check for error message */
	if (FUNC0(ctx->sync_msg.msg) == MSG_TYPE_ERR) {
		rc = -EINVAL;
		goto err;
	}

	msg[0] = ctx->sync_msg.msg;
	msg[1] = ctx->sync_msg.param1;
	msg[2] = ctx->sync_msg.param2;

err:
	ctx->resp_pending = false;
	FUNC6(&ctx->rd_mutex);
	return rc;
}