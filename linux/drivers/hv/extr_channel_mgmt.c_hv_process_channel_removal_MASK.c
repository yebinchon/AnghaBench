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
struct TYPE_3__ {scalar_t__ child_relid; } ;
struct vmbus_channel {scalar_t__ target_cpu; scalar_t__ affinity_policy; TYPE_1__ offermsg; int /*<<< orphan*/  alloced_cpus_in_node; int /*<<< orphan*/  lock; int /*<<< orphan*/  sc_list; struct vmbus_channel* primary_channel; int /*<<< orphan*/  listentry; int /*<<< orphan*/  rescind; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HV_LOCALIZED ; 
 scalar_t__ INVALID_RELID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/  (*) (struct vmbus_channel*),struct vmbus_channel*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__ vmbus_connection ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

void FUNC12(struct vmbus_channel *channel)
{
	struct vmbus_channel *primary_channel;
	unsigned long flags;

	FUNC0(!FUNC5(&vmbus_connection.channel_mutex));
	FUNC0(!channel->rescind);

	if (channel->target_cpu != FUNC3()) {
		FUNC7();
		FUNC8(channel->target_cpu,
					 percpu_channel_deq, channel, true);
	} else {
		FUNC6(channel);
		FUNC7();
	}

	if (channel->primary_channel == NULL) {
		FUNC4(&channel->listentry);

		primary_channel = channel;
	} else {
		primary_channel = channel->primary_channel;
		FUNC9(&primary_channel->lock, flags);
		FUNC4(&channel->sc_list);
		FUNC10(&primary_channel->lock, flags);
	}

	/*
	 * We need to free the bit for init_vp_index() to work in the case
	 * of sub-channel, when we reload drivers like hv_netvsc.
	 */
	if (channel->affinity_policy == HV_LOCALIZED)
		FUNC1(channel->target_cpu,
				  &primary_channel->alloced_cpus_in_node);

	/*
	 * Upon suspend, an in-use hv_sock channel is marked as "rescinded" and
	 * the relid is invalidated; after hibernation, when the user-space app
	 * destroys the channel, the relid is INVALID_RELID, and in this case
	 * it's unnecessary and unsafe to release the old relid, since the same
	 * relid can refer to a completely different channel now.
	 */
	if (channel->offermsg.child_relid != INVALID_RELID)
		FUNC11(channel->offermsg.child_relid);

	FUNC2(channel);
}