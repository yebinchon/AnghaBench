#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kfd_dev {int interrupts_active; int /*<<< orphan*/  interrupt_work; int /*<<< orphan*/  interrupt_lock; int /*<<< orphan*/  ih_wq; TYPE_1__* device_info; int /*<<< orphan*/  ih_fifo; } ;
struct TYPE_2__ {int ih_ring_entry_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int KFD_IH_NUM_ENTRIES ; 
 int /*<<< orphan*/  WQ_HIGHPRI ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  interrupt_wq ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct kfd_dev *kfd)
{
	int r;

	r = FUNC4(&kfd->ih_fifo,
		KFD_IH_NUM_ENTRIES * kfd->device_info->ih_ring_entry_size,
		GFP_KERNEL);
	if (r) {
		FUNC2(FUNC3(), "Failed to allocate IH fifo\n");
		return r;
	}

	kfd->ih_wq = FUNC1("KFD IH", WQ_HIGHPRI, 1);
	FUNC6(&kfd->interrupt_lock);

	FUNC0(&kfd->interrupt_work, interrupt_wq);

	kfd->interrupts_active = true;

	/*
	 * After this function returns, the interrupt will be enabled. This
	 * barrier ensures that the interrupt running on a different processor
	 * sees all the above writes.
	 */
	FUNC5();

	return 0;
}