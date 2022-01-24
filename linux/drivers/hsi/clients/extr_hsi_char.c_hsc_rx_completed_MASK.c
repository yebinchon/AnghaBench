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
struct hsi_msg {int /*<<< orphan*/  channel; int /*<<< orphan*/  cl; } ;
struct hsc_client_data {struct hsc_channel* channels; } ;
struct hsc_channel {int /*<<< orphan*/  free_msgs_list; int /*<<< orphan*/  rx_wait; int /*<<< orphan*/  rx_msgs_queue; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSC_CH_READ ; 
 int /*<<< orphan*/  FUNC0 (struct hsc_channel*,struct hsi_msg*,int /*<<< orphan*/ *) ; 
 struct hsc_client_data* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hsi_msg *msg)
{
	struct hsc_client_data *cl_data = FUNC1(msg->cl);
	struct hsc_channel *channel = cl_data->channels + msg->channel;

	if (FUNC2(HSC_CH_READ, &channel->flags)) {
		FUNC0(channel, msg, &channel->rx_msgs_queue);
		FUNC3(&channel->rx_wait);
	} else {
		FUNC0(channel, msg, &channel->free_msgs_list);
	}
}