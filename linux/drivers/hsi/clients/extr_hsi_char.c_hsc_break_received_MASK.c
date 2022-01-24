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
struct hsi_msg {int /*<<< orphan*/  cl; int /*<<< orphan*/  status; } ;
struct hsc_client_data {struct hsc_channel* channels; } ;
struct hsc_channel {int /*<<< orphan*/  rx_wait; int /*<<< orphan*/  rx_msgs_queue; int /*<<< orphan*/  flags; int /*<<< orphan*/  free_msgs_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSC_CH_READ ; 
 int HSC_DEVS ; 
 int /*<<< orphan*/  HSI_STATUS_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hsc_channel*,struct hsi_msg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_msg*) ; 
 struct hsi_msg* FUNC3 (struct hsc_channel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hsi_msg*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct hsi_msg*) ; 
 struct hsc_client_data* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct hsi_msg *msg)
{
	struct hsc_client_data *cl_data = FUNC6(msg->cl);
	struct hsc_channel *channel = cl_data->channels;
	int i, ret;

	/* Broadcast HWBREAK on all channels */
	for (i = 0; i < HSC_DEVS; i++, channel++) {
		struct hsi_msg *msg2;

		if (!FUNC8(HSC_CH_READ, &channel->flags))
			continue;
		msg2 = FUNC3(channel, &channel->free_msgs_list);
		if (!msg2)
			continue;
		FUNC0(HSC_CH_READ, &channel->flags);
		FUNC4(msg2, 0);
		msg2->status = HSI_STATUS_COMPLETED;
		FUNC1(channel, msg2, &channel->rx_msgs_queue);
		FUNC9(&channel->rx_wait);
	}
	FUNC7(msg->cl);
	ret = FUNC5(msg->cl, msg);
	if (ret < 0)
		FUNC2(msg);
}