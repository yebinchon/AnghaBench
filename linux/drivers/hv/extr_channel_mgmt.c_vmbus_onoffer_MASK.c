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
struct vmbus_channel_offer_channel {scalar_t__ child_relid; } ;
struct vmbus_channel_message_header {int dummy; } ;
struct vmbus_channel {struct vmbus_channel_offer_channel offermsg; } ;
struct TYPE_2__ {int /*<<< orphan*/  offer_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 scalar_t__ INVALID_RELID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vmbus_channel* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct vmbus_channel* FUNC4 (struct vmbus_channel_offer_channel*) ; 
 scalar_t__ FUNC5 (struct vmbus_channel_offer_channel*,struct vmbus_channel_offer_channel*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int,int,struct vmbus_channel_offer_channel*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vmbus_channel_offer_channel*) ; 
 TYPE_1__ vmbus_connection ; 
 int /*<<< orphan*/  FUNC10 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct vmbus_channel*,struct vmbus_channel_offer_channel*) ; 

__attribute__((used)) static void FUNC13(struct vmbus_channel_message_header *hdr)
{
	struct vmbus_channel_offer_channel *offer;
	struct vmbus_channel *oldchannel, *newchannel;
	size_t offer_sz;

	offer = (struct vmbus_channel_offer_channel *)hdr;

	FUNC9(offer);

	oldchannel = FUNC4(offer);

	if (oldchannel != NULL) {
		FUNC2(&vmbus_connection.offer_in_progress);

		/*
		 * We're resuming from hibernation: all the sub-channel and
		 * hv_sock channels we had before the hibernation should have
		 * been cleaned up, and now we must be seeing a re-offered
		 * primary channel that we had before the hibernation.
		 */

		FUNC0(oldchannel->offermsg.child_relid != INVALID_RELID);
		/* Fix up the relid. */
		oldchannel->offermsg.child_relid = offer->child_relid;

		offer_sz = sizeof(*offer);
		if (FUNC5(offer, &oldchannel->offermsg, offer_sz) == 0) {
			FUNC3();
			return;
		}

		/*
		 * This is not an error, since the host can also change the
		 * other field(s) of the offer, e.g. on WS RS5 (Build 17763),
		 * the offer->connection_id of the Mellanox VF vmbus device
		 * can change when the host reoffers the device upon resume.
		 */
		FUNC6("vmbus offer changed: relid=%d\n",
			 offer->child_relid);

		FUNC8("Old vmbus offer: ", DUMP_PREFIX_OFFSET,
				     16, 4, &oldchannel->offermsg, offer_sz,
				     false);
		FUNC8("New vmbus offer: ", DUMP_PREFIX_OFFSET,
				     16, 4, offer, offer_sz, false);

		/* Fix up the old channel. */
		FUNC12(oldchannel, offer);

		FUNC3();

		return;
	}

	/* Allocate the channel object and save this offer. */
	newchannel = FUNC1();
	if (!newchannel) {
		FUNC11(offer->child_relid);
		FUNC2(&vmbus_connection.offer_in_progress);
		FUNC7("Unable to allocate channel object\n");
		return;
	}

	FUNC12(newchannel, offer);

	FUNC10(newchannel);
}