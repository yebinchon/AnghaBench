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
struct mbox_chan {int msg_count; int msg_free; int /*<<< orphan*/  lock; void** msg_data; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int MBOX_TX_QUEUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct mbox_chan *chan, void *mssg)
{
	int idx;
	unsigned long flags;

	FUNC0(&chan->lock, flags);

	/* See if there is any space left */
	if (chan->msg_count == MBOX_TX_QUEUE_LEN) {
		FUNC1(&chan->lock, flags);
		return -ENOBUFS;
	}

	idx = chan->msg_free;
	chan->msg_data[idx] = mssg;
	chan->msg_count++;

	if (idx == MBOX_TX_QUEUE_LEN - 1)
		chan->msg_free = 0;
	else
		chan->msg_free++;

	FUNC1(&chan->lock, flags);

	return idx;
}