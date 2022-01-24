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
struct sti_mbox_pdata {unsigned int num_inst; unsigned int num_chan; } ;
struct sti_mbox_device {scalar_t__ dev; int /*<<< orphan*/  name; } ;
struct sti_channel {unsigned int instance; unsigned int channel; struct sti_mbox_device* mdev; } ;
struct of_phandle_args {unsigned int* args; } ;
struct mbox_controller {scalar_t__ dev; int num_chans; struct mbox_chan* chans; } ;
struct mbox_chan {struct sti_channel* con_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mbox_chan* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,...) ; 
 struct sti_mbox_device* FUNC2 (scalar_t__) ; 
 struct sti_mbox_pdata* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct sti_channel* FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mbox_chan *FUNC6(struct mbox_controller *mbox,
					const struct of_phandle_args *spec)
{
	struct sti_mbox_device *mdev = FUNC2(mbox->dev);
	struct sti_mbox_pdata *pdata = FUNC3(mdev->dev);
	struct sti_channel *chan_info;
	struct mbox_chan *chan = NULL;
	unsigned int instance  = spec->args[0];
	unsigned int channel   = spec->args[1];
	int i;

	/* Bounds checking */
	if (instance >= pdata->num_inst || channel  >= pdata->num_chan) {
		FUNC1(mbox->dev,
			"Invalid channel requested instance: %d channel: %d\n",
			instance, channel);
		return FUNC0(-EINVAL);
	}

	for (i = 0; i < mbox->num_chans; i++) {
		chan_info = mbox->chans[i].con_priv;

		/* Is requested channel free? */
		if (chan_info &&
		    mbox->dev == chan_info->mdev->dev &&
		    instance == chan_info->instance &&
		    channel == chan_info->channel) {

			FUNC1(mbox->dev, "Channel in use\n");
			return FUNC0(-EBUSY);
		}

		/*
		 * Find the first free slot, then continue checking
		 * to see if requested channel is in use
		 */
		if (!chan && !chan_info)
			chan = &mbox->chans[i];
	}

	if (!chan) {
		FUNC1(mbox->dev, "No free channels left\n");
		return FUNC0(-EBUSY);
	}

	chan_info = FUNC5(mbox->dev, sizeof(*chan_info), GFP_KERNEL);
	if (!chan_info)
		return FUNC0(-ENOMEM);

	chan_info->mdev		= mdev;
	chan_info->instance	= instance;
	chan_info->channel	= channel;

	chan->con_priv = chan_info;

	FUNC4(mbox->dev,
		 "Mbox: %s: Created channel: instance: %d channel: %d\n",
		 mdev->name, instance, channel);

	return chan;
}