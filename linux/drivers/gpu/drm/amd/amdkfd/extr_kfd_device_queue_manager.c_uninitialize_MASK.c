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
struct device_queue_manager {scalar_t__ queue_count; scalar_t__ processes_count; int /*<<< orphan*/  pipeline_mem; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock_hidden; int /*<<< orphan*/ * mqd_mgrs; int /*<<< orphan*/  allocated_queues; } ;

/* Variables and functions */
 int KFD_MQD_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device_queue_manager *dqm)
{
	int i;

	FUNC0(dqm->queue_count > 0 || dqm->processes_count > 0);

	FUNC2(dqm->allocated_queues);
	for (i = 0 ; i < KFD_MQD_TYPE_MAX ; i++)
		FUNC2(dqm->mqd_mgrs[i]);
	FUNC3(&dqm->lock_hidden);
	FUNC1(dqm->dev, dqm->pipeline_mem);
}