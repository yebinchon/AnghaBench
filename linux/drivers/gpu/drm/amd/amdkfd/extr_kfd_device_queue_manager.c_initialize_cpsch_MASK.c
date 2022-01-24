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
struct device_queue_manager {int active_runlist; unsigned long long sdma_bitmap; unsigned long long xgmi_sdma_bitmap; int /*<<< orphan*/  hw_exception_work; scalar_t__ xgmi_sdma_queue_count; scalar_t__ sdma_queue_count; scalar_t__ processes_count; scalar_t__ queue_count; int /*<<< orphan*/  queues; int /*<<< orphan*/  lock_hidden; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_queue_manager*) ; 
 int FUNC3 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  kfd_process_hw_exception ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device_queue_manager *dqm)
{
	FUNC6("num of pipes: %d\n", FUNC4(dqm));

	FUNC5(&dqm->lock_hidden);
	FUNC0(&dqm->queues);
	dqm->queue_count = dqm->processes_count = 0;
	dqm->sdma_queue_count = 0;
	dqm->xgmi_sdma_queue_count = 0;
	dqm->active_runlist = false;
	dqm->sdma_bitmap = ~0ULL >> (64 - FUNC2(dqm));
	dqm->xgmi_sdma_bitmap = ~0ULL >> (64 - FUNC3(dqm));

	FUNC1(&dqm->hw_exception_work, kfd_process_hw_exception);

	return 0;
}