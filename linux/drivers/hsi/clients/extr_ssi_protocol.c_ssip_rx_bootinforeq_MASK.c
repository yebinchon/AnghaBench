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
typedef  scalar_t__ u32 ;
struct ssi_protocol {int main_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_wd; int /*<<< orphan*/  flags; } ;
struct hsi_msg {int /*<<< orphan*/  complete; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
#define  ACTIVE 130 
#define  HANDSHAKE 129 
#define  INIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSIP_CMT_LOADER_SYNC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SSIP_LOCAL_VERID ; 
 int /*<<< orphan*/  SSIP_WAKETEST_FLAG ; 
 int /*<<< orphan*/  SSIP_WDTOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_client*,struct hsi_msg*) ; 
 struct ssi_protocol* FUNC6 (struct hsi_client*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct hsi_client*,int) ; 
 struct hsi_msg* FUNC12 (struct ssi_protocol*) ; 
 int /*<<< orphan*/  FUNC13 (struct hsi_client*) ; 
 int /*<<< orphan*/  ssip_release_cmd ; 
 int /*<<< orphan*/  FUNC14 (struct hsi_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct hsi_client *cl, u32 cmd)
{
	struct ssi_protocol *ssi = FUNC6(cl);
	struct hsi_msg *msg;

	/* Workaroud: Ignore CMT Loader message leftover */
	if (cmd == SSIP_CMT_LOADER_SYNC)
		return;

	switch (ssi->main_state) {
	case ACTIVE:
		FUNC3(&cl->device, "Boot info req on active state\n");
		FUNC13(cl);
		/* Fall through */
	case INIT:
	case HANDSHAKE:
		FUNC9(&ssi->lock);
		ssi->main_state = HANDSHAKE;
		FUNC10(&ssi->lock);

		if (!FUNC15(SSIP_WAKETEST_FLAG, &ssi->flags))
			FUNC11(cl, 1); /* FIXME: To be removed */

		FUNC9(&ssi->lock);
		/* Start boot handshake watchdog */
		FUNC7(&ssi->tx_wd, jiffies + FUNC8(SSIP_WDTOUT));
		FUNC10(&ssi->lock);
		FUNC2(&cl->device, "Send BOOTINFO_RESP\n");
		if (FUNC1(cmd) != SSIP_LOCAL_VERID)
			FUNC4(&cl->device, "boot info req verid mismatch\n");
		msg = FUNC12(ssi);
		FUNC14(msg, FUNC0(SSIP_LOCAL_VERID));
		msg->complete = ssip_release_cmd;
		FUNC5(cl, msg);
		break;
	default:
		FUNC2(&cl->device, "Wrong state M(%d)\n", ssi->main_state);
		break;
	}
}