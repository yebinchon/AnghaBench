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
struct sec_queue {int in_use; } ;
struct sec_dev_info {int /*<<< orphan*/  dev_lock; struct sec_queue* queues; int /*<<< orphan*/  queues_in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct sec_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int SEC_Q_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sec_queue *FUNC3(struct sec_dev_info *info)
{
	int i;

	FUNC1(&info->dev_lock);

	/* Get the first idle queue in SEC device */
	for (i = 0; i < SEC_Q_NUM; i++)
		if (!info->queues[i].in_use) {
			info->queues[i].in_use = true;
			info->queues_in_use++;
			FUNC2(&info->dev_lock);

			return &info->queues[i];
		}
	FUNC2(&info->dev_lock);

	return FUNC0(-ENODEV);
}