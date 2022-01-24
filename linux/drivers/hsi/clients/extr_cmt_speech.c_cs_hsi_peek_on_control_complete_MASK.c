#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nents; } ;
struct hsi_msg {scalar_t__ status; int /*<<< orphan*/  complete; TYPE_1__ sgt; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {int control_state; TYPE_2__* cl; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ HSI_STATUS_ERROR ; 
 int SSI_CHANNEL_STATE_READING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*,struct hsi_msg*) ; 
 int /*<<< orphan*/  cs_hsi_read_on_control_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (TYPE_2__*,struct hsi_msg*) ; 

__attribute__((used)) static void FUNC5(struct hsi_msg *msg)
{
	struct cs_hsi_iface *hi = msg->context;
	int ret;

	if (msg->status == HSI_STATUS_ERROR) {
		FUNC3(&hi->cl->device, "Control peek RX error detected\n");
		FUNC1(hi, msg);
		return;
	}

	FUNC0(!(hi->control_state & SSI_CHANNEL_STATE_READING));

	FUNC2(&hi->cl->device, "Peek on control complete, reading\n");
	msg->sgt.nents = 1;
	msg->complete = cs_hsi_read_on_control_complete;
	ret = FUNC4(hi->cl, msg);
	if (ret)
		FUNC1(hi, msg);
}