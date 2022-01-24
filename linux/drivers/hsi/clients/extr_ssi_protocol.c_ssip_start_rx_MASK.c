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
struct ssi_protocol {scalar_t__ main_state; scalar_t__ recv_state; int /*<<< orphan*/  lock; } ;
struct hsi_msg {int /*<<< orphan*/  complete; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ ACTIVE ; 
 scalar_t__ RECV_READY ; 
 int /*<<< orphan*/  SSIP_READY_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hsi_client*,struct hsi_msg*) ; 
 struct ssi_protocol* FUNC2 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct hsi_msg* FUNC5 (struct ssi_protocol*) ; 
 int /*<<< orphan*/  ssip_release_cmd ; 
 int /*<<< orphan*/  FUNC6 (struct hsi_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ssi_protocol*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct hsi_client *cl)
{
	struct ssi_protocol *ssi = FUNC2(cl);
	struct hsi_msg *msg;

	FUNC0(&cl->device, "RX start M(%d) R(%d)\n", ssi->main_state,
						ssi->recv_state);
	FUNC3(&ssi->lock);
	/*
	 * We can have two UP events in a row due to a short low
	 * high transition. Therefore we need to ignore the sencond UP event.
	 */
	if ((ssi->main_state != ACTIVE) || (ssi->recv_state == RECV_READY)) {
		FUNC4(&ssi->lock);
		return;
	}
	FUNC7(ssi, RECV_READY);
	FUNC4(&ssi->lock);

	msg = FUNC5(ssi);
	FUNC6(msg, SSIP_READY_CMD);
	msg->complete = ssip_release_cmd;
	FUNC0(&cl->device, "Send READY\n");
	FUNC1(cl, msg);
}