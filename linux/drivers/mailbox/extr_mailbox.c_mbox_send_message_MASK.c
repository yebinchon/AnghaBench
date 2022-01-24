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
struct mbox_chan {int /*<<< orphan*/  tx_complete; TYPE_2__* cl; TYPE_1__* mbox; } ;
struct TYPE_4__ {int tx_tout; scalar_t__ tx_block; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIME ; 
 int FUNC0 (struct mbox_chan*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbox_chan*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct mbox_chan *chan, void *mssg)
{
	int t;

	if (!chan || !chan->cl)
		return -EINVAL;

	t = FUNC0(chan, mssg);
	if (t < 0) {
		FUNC1(chan->mbox->dev, "Try increasing MBOX_TX_QUEUE_LEN\n");
		return t;
	}

	FUNC3(chan);

	if (chan->cl->tx_block) {
		unsigned long wait;
		int ret;

		if (!chan->cl->tx_tout) /* wait forever */
			wait = FUNC2(3600000);
		else
			wait = FUNC2(chan->cl->tx_tout);

		ret = FUNC5(&chan->tx_complete, wait);
		if (ret == 0) {
			t = -ETIME;
			FUNC4(chan, t);
		}
	}

	return t;
}