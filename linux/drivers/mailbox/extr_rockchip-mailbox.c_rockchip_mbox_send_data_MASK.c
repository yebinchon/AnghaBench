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
struct rockchip_mbox_msg {scalar_t__ rx_size; scalar_t__ cmd; } ;
struct rockchip_mbox_chan {size_t idx; struct rockchip_mbox_msg* msg; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct rockchip_mbox {scalar_t__ buf_size; scalar_t__ mbox_base; struct rockchip_mbox_chan* chans; TYPE_2__ mbox; } ;
struct mbox_chan {TYPE_1__* mbox; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct rockchip_mbox* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mbox_chan *chan, void *data)
{
	struct rockchip_mbox *mb = FUNC4(chan->mbox->dev);
	struct rockchip_mbox_msg *msg = data;
	struct rockchip_mbox_chan *chans = mb->chans;

	if (!msg)
		return -EINVAL;

	if (msg->rx_size > mb->buf_size) {
		FUNC3(mb->mbox.dev, "Transmit size over buf size(%d)\n",
			mb->buf_size);
		return -EINVAL;
	}

	FUNC2(mb->mbox.dev, "Chan[%d]: A2B message, cmd 0x%08x\n",
		chans->idx, msg->cmd);

	mb->chans[chans->idx].msg = msg;

	FUNC5(msg->cmd, mb->mbox_base + FUNC0(chans->idx));
	FUNC5(msg->rx_size, mb->mbox_base +
		       FUNC1(chans->idx));

	return 0;
}