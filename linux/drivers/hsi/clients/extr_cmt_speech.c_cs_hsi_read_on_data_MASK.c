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
struct TYPE_3__ {scalar_t__ nents; int /*<<< orphan*/  sgl; } ;
struct hsi_msg {int /*<<< orphan*/  complete; TYPE_1__ sgt; } ;
struct cs_hsi_iface {int data_state; TYPE_2__* cl; scalar_t__ mmap_base; struct hsi_msg* data_rx_msg; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int SSI_CHANNEL_STATE_POLL ; 
 int SSI_CHANNEL_STATE_READING ; 
 int /*<<< orphan*/  FUNC0 (struct cs_hsi_iface*,struct hsi_msg*) ; 
 int /*<<< orphan*/  cs_hsi_peek_on_data_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (TYPE_2__*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cs_hsi_iface *hi)
{
	struct hsi_msg *rxmsg;
	int ret;

	FUNC4(&hi->lock);
	if (hi->data_state &
		(SSI_CHANNEL_STATE_READING | SSI_CHANNEL_STATE_POLL)) {
		FUNC1(&hi->cl->device, "Data read already pending (%u)\n",
			hi->data_state);
		FUNC5(&hi->lock);
		return;
	}
	hi->data_state |= SSI_CHANNEL_STATE_POLL;
	FUNC5(&hi->lock);

	rxmsg = hi->data_rx_msg;
	FUNC3(rxmsg->sgt.sgl, (void *)hi->mmap_base, 0);
	rxmsg->sgt.nents = 0;
	rxmsg->complete = cs_hsi_peek_on_data_complete;

	ret = FUNC2(hi->cl, rxmsg);
	if (ret)
		FUNC0(hi, rxmsg);
}