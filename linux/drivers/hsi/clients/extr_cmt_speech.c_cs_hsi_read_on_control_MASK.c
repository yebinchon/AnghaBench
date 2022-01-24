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
struct TYPE_3__ {scalar_t__ nents; } ;
struct hsi_msg {int /*<<< orphan*/  complete; TYPE_1__ sgt; } ;
struct cs_hsi_iface {int control_state; TYPE_2__* cl; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int SSI_CHANNEL_STATE_ERROR ; 
 int SSI_CHANNEL_STATE_READING ; 
 struct hsi_msg* FUNC0 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*,struct hsi_msg*) ; 
 int /*<<< orphan*/  cs_hsi_peek_on_control_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (TYPE_2__*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct cs_hsi_iface *hi)
{
	struct hsi_msg *msg;
	int ret;

	FUNC5(&hi->lock);
	if (hi->control_state & SSI_CHANNEL_STATE_READING) {
		FUNC3(&hi->cl->device, "Control read already pending (%d)\n",
			hi->control_state);
		FUNC6(&hi->lock);
		return;
	}
	if (hi->control_state & SSI_CHANNEL_STATE_ERROR) {
		FUNC3(&hi->cl->device, "Control read error (%d)\n",
			hi->control_state);
		FUNC6(&hi->lock);
		return;
	}
	hi->control_state |= SSI_CHANNEL_STATE_READING;
	FUNC2(&hi->cl->device, "Issuing RX on control\n");
	msg = FUNC0(hi);
	FUNC6(&hi->lock);

	msg->sgt.nents = 0;
	msg->complete = cs_hsi_peek_on_control_complete;
	ret = FUNC4(hi->cl, msg);
	if (ret)
		FUNC1(hi, msg);
}