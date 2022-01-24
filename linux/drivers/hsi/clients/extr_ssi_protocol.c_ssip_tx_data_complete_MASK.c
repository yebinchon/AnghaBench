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
struct ssi_protocol {int /*<<< orphan*/  lock; int /*<<< orphan*/  txqueue; } ;
struct hsi_msg {scalar_t__ status; int /*<<< orphan*/  complete; struct hsi_client* cl; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ HSI_STATUS_ERROR ; 
 int /*<<< orphan*/  SENDING_SWBREAK ; 
 int /*<<< orphan*/  SSIP_SWBREAK_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_client*,struct hsi_msg*) ; 
 struct ssi_protocol* FUNC3 (struct hsi_client*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct hsi_msg* FUNC7 (struct ssi_protocol*) ; 
 int /*<<< orphan*/  FUNC8 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC9 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct hsi_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ssi_protocol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssip_swbreak_complete ; 
 int /*<<< orphan*/  FUNC12 (struct hsi_client*) ; 

__attribute__((used)) static void FUNC13(struct hsi_msg *msg)
{
	struct hsi_client *cl = msg->cl;
	struct ssi_protocol *ssi = FUNC3(cl);
	struct hsi_msg *cmsg;

	if (msg->status == HSI_STATUS_ERROR) {
		FUNC1(&cl->device, "TX data error\n");
		FUNC8(cl);
		goto out;
	}
	FUNC5(&ssi->lock);
	if (FUNC4(&ssi->txqueue)) {
		FUNC11(ssi, SENDING_SWBREAK);
		FUNC6(&ssi->lock);
		cmsg = FUNC7(ssi);
		FUNC10(cmsg, SSIP_SWBREAK_CMD);
		cmsg->complete = ssip_swbreak_complete;
		FUNC0(&cl->device, "Send SWBREAK\n");
		FUNC2(cl, cmsg);
	} else {
		FUNC6(&ssi->lock);
		FUNC12(cl);
	}
out:
	FUNC9(msg);
}