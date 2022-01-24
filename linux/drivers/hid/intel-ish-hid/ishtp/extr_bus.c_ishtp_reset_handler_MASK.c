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
struct ishtp_device {int /*<<< orphan*/  rd_msg_spinlock; scalar_t__ rd_msg_fifo_tail; scalar_t__ rd_msg_fifo_head; int /*<<< orphan*/  dev_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISHTP_DEV_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct ishtp_device *dev)
{
	unsigned long	flags;

	/* Handle FW-initiated reset */
	dev->dev_state = ISHTP_DEV_RESETTING;

	/* Clear BH processing queue - no further HBMs */
	FUNC1(&dev->rd_msg_spinlock, flags);
	dev->rd_msg_fifo_head = dev->rd_msg_fifo_tail = 0;
	FUNC2(&dev->rd_msg_spinlock, flags);

	/* Handle ISH FW reset against upper layers */
	FUNC0(dev, true);
}