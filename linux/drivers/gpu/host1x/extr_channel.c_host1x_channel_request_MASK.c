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
struct host1x_channel_list {int /*<<< orphan*/  allocated_channels; } ;
struct host1x_channel {int /*<<< orphan*/  id; int /*<<< orphan*/  cdma; struct device* dev; int /*<<< orphan*/  submitlock; int /*<<< orphan*/  refcount; } ;
struct host1x {struct host1x_channel_list channel_list; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct host1x_channel* FUNC0 (struct host1x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct host1x* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct host1x*,struct host1x_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct host1x_channel *FUNC8(struct device *dev)
{
	struct host1x *host = FUNC3(dev->parent);
	struct host1x_channel_list *chlist = &host->channel_list;
	struct host1x_channel *channel;
	int err;

	channel = FUNC0(host);
	if (!channel)
		return NULL;

	FUNC6(&channel->refcount);
	FUNC7(&channel->submitlock);
	channel->dev = dev;

	err = FUNC5(host, channel, channel->id);
	if (err < 0)
		goto fail;

	err = FUNC4(&channel->cdma);
	if (err < 0)
		goto fail;

	return channel;

fail:
	FUNC1(channel->id, chlist->allocated_channels);

	FUNC2(dev, "failed to initialize channel\n");

	return NULL;
}