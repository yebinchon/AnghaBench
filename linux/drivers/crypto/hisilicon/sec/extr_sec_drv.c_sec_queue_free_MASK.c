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
struct sec_queue {int in_use; int /*<<< orphan*/  queue_id; struct sec_dev_info* dev_info; } ;
struct sec_dev_info {int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  queues_in_use; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SEC_Q_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sec_queue *queue)
{
	struct sec_dev_info *info = queue->dev_info;

	if (queue->queue_id >= SEC_Q_NUM) {
		FUNC0(info->dev, "No queue %d\n", queue->queue_id);
		return -ENODEV;
	}

	if (!queue->in_use) {
		FUNC0(info->dev, "Queue %d is idle\n", queue->queue_id);
		return -ENODEV;
	}

	FUNC1(&info->dev_lock);
	queue->in_use = false;
	info->queues_in_use--;
	FUNC2(&info->dev_lock);

	return 0;
}