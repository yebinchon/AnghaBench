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
struct vmbus_channel_rescind_offer {int /*<<< orphan*/  child_relid; } ;
struct vmbus_channel_message_header {int dummy; } ;
struct vmbus_channel {scalar_t__ state; int /*<<< orphan*/  rescind_event; int /*<<< orphan*/ * primary_channel; TYPE_1__* device_obj; int /*<<< orphan*/  (* chn_rescind_callback ) (struct vmbus_channel*) ;int /*<<< orphan*/  probe_done; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel_mutex; int /*<<< orphan*/  offer_in_progress; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ CHANNEL_OPEN_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_channel*) ; 
 scalar_t__ FUNC6 (struct vmbus_channel*) ; 
 scalar_t__ FUNC7 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 struct vmbus_channel* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC14 (struct vmbus_channel_rescind_offer*) ; 
 TYPE_2__ vmbus_connection ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC17 (struct vmbus_channel*) ; 

__attribute__((used)) static void FUNC18(struct vmbus_channel_message_header *hdr)
{
	struct vmbus_channel_rescind_offer *rescind;
	struct vmbus_channel *channel;
	struct device *dev;
	bool clean_up_chan_for_suspend;

	rescind = (struct vmbus_channel_rescind_offer *)hdr;

	FUNC14(rescind);

	/*
	 * The offer msg and the corresponding rescind msg
	 * from the host are guranteed to be ordered -
	 * offer comes in first and then the rescind.
	 * Since we process these events in work elements,
	 * and with preemption, we may end up processing
	 * the events out of order. Given that we handle these
	 * work elements on the same CPU, this is possible only
	 * in the case of preemption. In any case wait here
	 * until the offer processing has moved beyond the
	 * point where the channel is discoverable.
	 */

	while (FUNC1(&vmbus_connection.offer_in_progress) != 0) {
		/*
		 * We wait here until any channel offer is currently
		 * being processed.
		 */
		FUNC8(1);
	}

	FUNC9(&vmbus_connection.channel_mutex);
	channel = FUNC12(rescind->child_relid);
	FUNC10(&vmbus_connection.channel_mutex);

	if (channel == NULL) {
		/*
		 * We failed in processing the offer message;
		 * we would have cleaned up the relid in that
		 * failure path.
		 */
		return;
	}

	clean_up_chan_for_suspend = FUNC6(channel) ||
				    FUNC7(channel);
	/*
	 * Before setting channel->rescind in vmbus_rescind_cleanup(), we
	 * should make sure the channel callback is not running any more.
	 */
	FUNC17(channel);

	/*
	 * Now wait for offer handling to complete.
	 */
	FUNC16(channel);
	while (FUNC0(channel->probe_done) == false) {
		/*
		 * We wait here until any channel offer is currently
		 * being processed.
		 */
		FUNC8(1);
	}

	/*
	 * At this point, the rescind handling can proceed safely.
	 */

	if (channel->device_obj) {
		if (channel->chn_rescind_callback) {
			channel->chn_rescind_callback(channel);

			if (clean_up_chan_for_suspend)
				FUNC2();

			return;
		}
		/*
		 * We will have to unregister this device from the
		 * driver core.
		 */
		dev = FUNC4(&channel->device_obj->device);
		if (dev) {
			FUNC15(channel->device_obj);
			FUNC11(dev);
		}
	}
	if (channel->primary_channel != NULL) {
		/*
		 * Sub-channel is being rescinded. Following is the channel
		 * close sequence when initiated from the driveri (refer to
		 * vmbus_close() for details):
		 * 1. Close all sub-channels first
		 * 2. Then close the primary channel.
		 */
		FUNC9(&vmbus_connection.channel_mutex);
		if (channel->state == CHANNEL_OPEN_STATE) {
			/*
			 * The channel is currently not open;
			 * it is safe for us to cleanup the channel.
			 */
			FUNC5(channel);
		} else {
			FUNC3(&channel->rescind_event);
		}
		FUNC10(&vmbus_connection.channel_mutex);
	}

	/* The "channel" may have been freed. Do not access it any longer. */

	if (clean_up_chan_for_suspend)
		FUNC2();
}