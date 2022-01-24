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
typedef  void* u32 ;
struct TYPE_2__ {void* param2; void* param1; void* msg; } ;
struct xgene_hwmon_dev {int /*<<< orphan*/  workq; int /*<<< orphan*/  kfifo_lock; int /*<<< orphan*/  async_msg_fifo; int /*<<< orphan*/  rd_complete; TYPE_1__ sync_msg; scalar_t__ resp_pending; struct acpi_pcct_shared_memory* pcc_comm_addr; } ;
struct slimpro_resp_msg {int dummy; } ;
struct mbox_client {int dummy; } ;
struct acpi_pcct_shared_memory {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 scalar_t__ DBG_SUBTYPE_SENSOR_READ ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ MSG_TYPE_DBG ; 
 scalar_t__ MSG_TYPE_ERR ; 
 scalar_t__ MSG_TYPE_PWRMGMT ; 
 int /*<<< orphan*/  PCCS_CMD_COMPLETE ; 
 int /*<<< orphan*/  PCCS_SCI_DOORBEL ; 
 scalar_t__ PWRMGMT_SUBTYPE_TPC ; 
 scalar_t__ TPC_ALARM ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct slimpro_resp_msg*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct xgene_hwmon_dev* FUNC6 (struct mbox_client*) ; 
 scalar_t__ FUNC7 (struct xgene_hwmon_dev*,struct slimpro_resp_msg*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mbox_client *cl, void *msg)
{
	struct xgene_hwmon_dev *ctx = FUNC6(cl);
	struct acpi_pcct_shared_memory *generic_comm_base = ctx->pcc_comm_addr;
	struct slimpro_resp_msg amsg;

	/*
	 * While the driver registers with the mailbox framework, an interrupt
	 * can be pending before the probe function completes its
	 * initialization. If such condition occurs, just queue up the message
	 * as the driver is not ready for servicing the callback.
	 */
	if (FUNC7(ctx, &amsg) < 0)
		return;

	msg = generic_comm_base + 1;
	/* Check if platform sends interrupt */
	if (!FUNC8(&generic_comm_base->status,
				    PCCS_SCI_DOORBEL))
		return;

	/*
	 * Response message format:
	 * msg[0] is the return code of the operation
	 * msg[1] is the first parameter word
	 * msg[2] is the second parameter word
	 *
	 * As message only supports dword size, just assign it.
	 */

	/* Check for sync query */
	if (ctx->resp_pending &&
	    ((FUNC1(((u32 *)msg)[0]) == MSG_TYPE_ERR) ||
	     (FUNC1(((u32 *)msg)[0]) == MSG_TYPE_DBG &&
	      FUNC0(((u32 *)msg)[0]) == DBG_SUBTYPE_SENSOR_READ) ||
	     (FUNC1(((u32 *)msg)[0]) == MSG_TYPE_PWRMGMT &&
	      FUNC0(((u32 *)msg)[0]) == PWRMGMT_SUBTYPE_TPC &&
	      FUNC2(((u32 *)msg)[0]) == TPC_ALARM))) {
		/* Check if platform completes command */
		if (FUNC8(&generic_comm_base->status,
					   PCCS_CMD_COMPLETE)) {
			ctx->sync_msg.msg = ((u32 *)msg)[0];
			ctx->sync_msg.param1 = ((u32 *)msg)[1];
			ctx->sync_msg.param2 = ((u32 *)msg)[2];

			/* Operation waiting for response */
			FUNC3(&ctx->rd_complete);

			return;
		}
	}

	/*
	 * Platform notifies interrupt to OSPM.
	 * OPSM schedules a consumer command to get this information
	 * in a workqueue. Platform must wait until OSPM has issued
	 * a consumer command that serves this notification.
	 */

	/* Enqueue to the FIFO */
	FUNC4(&ctx->async_msg_fifo, &amsg,
			    sizeof(struct slimpro_resp_msg), &ctx->kfifo_lock);
	/* Schedule the bottom handler */
	FUNC5(&ctx->workq);
}