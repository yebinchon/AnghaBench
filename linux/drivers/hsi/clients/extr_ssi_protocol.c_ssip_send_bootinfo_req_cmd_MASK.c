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
struct ssi_protocol {int dummy; } ;
struct hsi_msg {int /*<<< orphan*/  complete; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSIP_LOCAL_VERID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_client*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct hsi_client*,struct hsi_msg*) ; 
 struct ssi_protocol* FUNC4 (struct hsi_client*) ; 
 struct hsi_msg* FUNC5 (struct ssi_protocol*) ; 
 int /*<<< orphan*/  ssip_release_cmd ; 
 int /*<<< orphan*/  ssip_rxcmd_complete ; 
 int /*<<< orphan*/  FUNC6 (struct hsi_msg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hsi_client *cl)
{
	struct ssi_protocol *ssi = FUNC4(cl);
	struct hsi_msg *msg;

	FUNC1(&cl->device, "Issuing BOOT INFO REQ command\n");
	msg = FUNC5(ssi);
	FUNC6(msg, FUNC0(SSIP_LOCAL_VERID));
	msg->complete = ssip_release_cmd;
	FUNC3(cl, msg);
	FUNC1(&cl->device, "Issuing RX command\n");
	msg = FUNC5(ssi);
	msg->complete = ssip_rxcmd_complete;
	FUNC2(cl, msg);
}