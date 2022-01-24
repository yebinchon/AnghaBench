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
struct device_queue_manager {int /*<<< orphan*/  packets; int /*<<< orphan*/  fence_mem; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KFD_UNMAP_QUEUES_FILTER_ALL_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_queue_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device_queue_manager *dqm)
{
	FUNC0(dqm);
	FUNC4(dqm, KFD_UNMAP_QUEUES_FILTER_ALL_QUEUES, 0);
	FUNC1(dqm);

	FUNC2(dqm->dev, dqm->fence_mem);
	FUNC3(&dqm->packets);

	return 0;
}