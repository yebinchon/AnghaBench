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
typedef  int /*<<< orphan*/  u32 ;
struct hsi_msg {scalar_t__ status; struct hsi_client* cl; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ HSI_STATUS_ERROR ; 
#define  SSIP_BOOTINFO_REQ 133 
#define  SSIP_BOOTINFO_RESP 132 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
#define  SSIP_READY 131 
#define  SSIP_START_TRANS 130 
#define  SSIP_SW_BREAK 129 
#define  SSIP_WAKETEST_RESULT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hsi_client*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct hsi_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hsi_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct hsi_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hsi_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct hsi_msg *msg)
{
	struct hsi_client *cl = msg->cl;
	u32 cmd = FUNC6(msg);
	unsigned int cmdid = FUNC0(cmd);

	if (msg->status == HSI_STATUS_ERROR) {
		FUNC2(&cl->device, "RX error detected\n");
		FUNC7(msg);
		FUNC5(cl);
		return;
	}
	FUNC4(cl, msg);
	FUNC1(&cl->device, "RX cmd: 0x%08x\n", cmd);
	switch (cmdid) {
	case SSIP_SW_BREAK:
		/* Ignored */
		break;
	case SSIP_BOOTINFO_REQ:
		FUNC8(cl, cmd);
		break;
	case SSIP_BOOTINFO_RESP:
		FUNC9(cl, cmd);
		break;
	case SSIP_WAKETEST_RESULT:
		FUNC12(cl, cmd);
		break;
	case SSIP_START_TRANS:
		FUNC11(cl, cmd);
		break;
	case SSIP_READY:
		FUNC10(cl);
		break;
	default:
		FUNC3(&cl->device, "command 0x%08x not supported\n", cmd);
		break;
	}
}