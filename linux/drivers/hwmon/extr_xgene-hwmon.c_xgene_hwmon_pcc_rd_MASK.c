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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int msg; int param1; int param2; } ;
struct xgene_hwmon_dev {int resp_pending; int mbox_idx; int /*<<< orphan*/  rd_mutex; int /*<<< orphan*/  mbox_chan; TYPE_1__ sync_msg; int /*<<< orphan*/  dev; int /*<<< orphan*/  usecs_lat; int /*<<< orphan*/  rd_complete; struct acpi_pcct_shared_memory* pcc_comm_addr; } ;
struct slimpro_resp_msg {int dummy; } ;
struct acpi_pcct_shared_memory {int signature; int command; int status; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (int) ; 
 int MSG_TYPE_ERR ; 
 int PCCC_GENERATE_DB_INT ; 
 int PCCS_CMD_COMPLETE ; 
 int PCC_SIGNATURE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct xgene_hwmon_dev *ctx, u32 *msg)
{
	struct acpi_pcct_shared_memory *generic_comm_base = ctx->pcc_comm_addr;
	u32 *ptr = (void *)(generic_comm_base + 1);
	int rc, i;
	u16 val;

	FUNC10(&ctx->rd_mutex);
	FUNC6(&ctx->rd_complete);
	ctx->resp_pending = true;

	/* Write signature for subspace */
	FUNC2(generic_comm_base->signature,
		   FUNC4(PCC_SIGNATURE_MASK | ctx->mbox_idx));

	/* Write to the shared command region */
	FUNC2(generic_comm_base->command,
		   FUNC3(FUNC0(msg[0]) | PCCC_GENERATE_DB_INT));

	/* Flip CMD COMPLETE bit */
	val = FUNC7(FUNC1(generic_comm_base->status));
	val &= ~PCCS_CMD_COMPLETE;
	FUNC2(generic_comm_base->status, FUNC3(val));

	/* Copy the message to the PCC comm space */
	for (i = 0; i < sizeof(struct slimpro_resp_msg) / 4; i++)
		FUNC2(ptr[i], FUNC4(msg[i]));

	/* Ring the doorbell */
	rc = FUNC9(ctx->mbox_chan, msg);
	if (rc < 0) {
		FUNC5(ctx->dev, "Mailbox send error %d\n", rc);
		goto err;
	}
	if (!FUNC13(&ctx->rd_complete,
					 FUNC12(ctx->usecs_lat))) {
		FUNC5(ctx->dev, "Mailbox operation timed out\n");
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
	FUNC8(ctx->mbox_chan, 0);
	ctx->resp_pending = false;
	FUNC11(&ctx->rd_mutex);
	return rc;
}