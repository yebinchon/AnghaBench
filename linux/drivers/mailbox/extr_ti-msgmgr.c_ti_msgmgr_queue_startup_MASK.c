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
struct ti_queue_inst {int is_tx; int /*<<< orphan*/  rx_buff; int /*<<< orphan*/  name; int /*<<< orphan*/  queue_ctrl; } ;
struct ti_msgmgr_inst {struct ti_msgmgr_desc* desc; } ;
struct ti_msgmgr_desc {int /*<<< orphan*/  max_message_size; scalar_t__ is_sproxy; } ;
struct mbox_chan {struct ti_queue_inst* con_priv; TYPE_1__* mbox; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPROXY_THREAD_CTRL_DIR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ti_msgmgr_inst* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ti_msgmgr_desc const*,struct ti_queue_inst*) ; 
 int FUNC6 (struct device*,struct ti_msgmgr_desc const*,struct ti_queue_inst*,struct mbox_chan*) ; 

__attribute__((used)) static int FUNC7(struct mbox_chan *chan)
{
	struct device *dev = chan->mbox->dev;
	struct ti_msgmgr_inst *inst = FUNC1(dev);
	struct ti_queue_inst *qinst = chan->con_priv;
	const struct ti_msgmgr_desc *d = inst->desc;
	int ret;
	int msg_count;

	/*
	 * If sproxy is starting and can send messages, we are a Tx thread,
	 * else Rx
	 */
	if (d->is_sproxy) {
		qinst->is_tx = (FUNC4(qinst->queue_ctrl) &
				SPROXY_THREAD_CTRL_DIR_MASK) ? false : true;

		msg_count = FUNC5(d, qinst);

		if (!msg_count && qinst->is_tx) {
			FUNC0(dev, "%s: Cannot transmit with 0 credits!\n",
				qinst->name);
			return -EINVAL;
		}
	}

	if (!qinst->is_tx) {
		/* Allocate usage buffer for rx */
		qinst->rx_buff = FUNC3(d->max_message_size, GFP_KERNEL);
		if (!qinst->rx_buff)
			return -ENOMEM;
		/* Request IRQ */
		ret = FUNC6(dev, d, qinst, chan);
		if (ret) {
			FUNC2(qinst->rx_buff);
			return ret;
		}
	}

	return 0;
}