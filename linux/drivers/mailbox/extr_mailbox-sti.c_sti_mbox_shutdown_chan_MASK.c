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
struct sti_channel {TYPE_1__* mdev; } ;
struct mbox_controller {int num_chans; int /*<<< orphan*/  dev; struct mbox_chan* chans; } ;
struct mbox_chan {struct sti_channel* con_priv; } ;
struct TYPE_2__ {struct mbox_controller* mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbox_chan*) ; 

__attribute__((used)) static void FUNC3(struct mbox_chan *chan)
{
	struct sti_channel *chan_info = chan->con_priv;
	struct mbox_controller *mbox = chan_info->mdev->mbox;
	int i;

	for (i = 0; i < mbox->num_chans; i++)
		if (chan == &mbox->chans[i])
			break;

	if (mbox->num_chans == i) {
		FUNC0(mbox->dev, "Request to free non-existent channel\n");
		return;
	}

	/* Reset channel */
	FUNC2(chan);
	FUNC1(chan);
	chan->con_priv = NULL;
}