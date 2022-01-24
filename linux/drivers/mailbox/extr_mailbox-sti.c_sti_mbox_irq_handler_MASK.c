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
struct sti_mbox_pdata {unsigned int num_inst; } ;
struct sti_mbox_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * enabled; int /*<<< orphan*/  name; } ;
struct sti_channel {int /*<<< orphan*/  channel; int /*<<< orphan*/  instance; } ;
struct mbox_chan {struct sti_channel* con_priv; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sti_mbox_pdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbox_chan*) ; 
 struct mbox_chan* FUNC5 (struct sti_mbox_device*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct sti_mbox_device *mdev = data;
	struct sti_mbox_pdata *pdata = FUNC1(mdev->dev);
	struct sti_channel *chan_info;
	struct mbox_chan *chan;
	unsigned int instance;
	int ret = IRQ_NONE;

	for (instance = 0; instance < pdata->num_inst; instance++) {
		chan = FUNC5(mdev, instance);
		if (!chan)
			continue;
		chan_info = chan->con_priv;

		if (!FUNC3(chan)) {
			FUNC2(mdev->dev,
				 "Unexpected IRQ: %s\n"
				 "  instance: %d: channel: %d [enabled: %x]\n",
				 mdev->name, chan_info->instance,
				 chan_info->channel, mdev->enabled[instance]);

			/* Only handle IRQ if no other valid IRQs were found */
			if (ret == IRQ_NONE)
				ret = IRQ_HANDLED;
			continue;
		}

		FUNC4(chan);
		ret = IRQ_WAKE_THREAD;
	}

	if (ret == IRQ_NONE)
		FUNC0(mdev->dev, "Spurious IRQ - was a channel requested?\n");

	return ret;
}