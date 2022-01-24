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
struct mm_struct {int dummy; } ;
struct kfd_process {scalar_t__ last_eviction_seqno; unsigned long last_restore_timestamp; int /*<<< orphan*/  eviction_work; } ;
struct dma_fence {scalar_t__ seqno; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  PROCESS_ACTIVE_TIME_MS ; 
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 unsigned long FUNC1 () ; 
 struct kfd_process* FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct kfd_process*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct mm_struct *mm,
					       struct dma_fence *fence)
{
	struct kfd_process *p;
	unsigned long active_time;
	unsigned long delay_jiffies = FUNC4(PROCESS_ACTIVE_TIME_MS);

	if (!fence)
		return -EINVAL;

	if (FUNC0(fence))
		return 0;

	p = FUNC2(mm);
	if (!p)
		return -ENODEV;

	if (fence->seqno == p->last_eviction_seqno)
		goto out;

	p->last_eviction_seqno = fence->seqno;

	/* Avoid KFD process starvation. Wait for at least
	 * PROCESS_ACTIVE_TIME_MS before evicting the process again
	 */
	active_time = FUNC1() - p->last_restore_timestamp;
	if (delay_jiffies > active_time)
		delay_jiffies -= active_time;
	else
		delay_jiffies = 0;

	/* During process initialization eviction_work.dwork is initialized
	 * to kfd_evict_bo_worker
	 */
	FUNC5(&p->eviction_work, delay_jiffies);
out:
	FUNC3(p);
	return 0;
}