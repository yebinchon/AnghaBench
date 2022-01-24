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
struct hsi_msg {int /*<<< orphan*/  link; int /*<<< orphan*/  channel; } ;
struct hsc_channel {int /*<<< orphan*/  free_msgs_list; int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HSC_MSGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hsi_msg* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max_data_size ; 

__attribute__((used)) static inline int FUNC3(struct hsc_channel *channel)
{
	struct hsi_msg *msg;
	int i;

	for (i = 0; i < HSC_MSGS; i++) {
		msg = FUNC1(max_data_size);
		if (!msg)
			goto out;
		msg->channel = channel->ch;
		FUNC2(&msg->link, &channel->free_msgs_list);
	}

	return 0;
out:
	FUNC0(&channel->free_msgs_list);

	return -ENOMEM;
}