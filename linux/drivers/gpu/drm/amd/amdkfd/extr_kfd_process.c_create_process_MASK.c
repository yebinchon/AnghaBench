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
struct task_struct {int /*<<< orphan*/  group_leader; scalar_t__ mm; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct kfd_process {scalar_t__ pasid; int /*<<< orphan*/  mutex; int /*<<< orphan*/  pqm; scalar_t__ mm; int /*<<< orphan*/  kfd_processes; int /*<<< orphan*/  lead_thread; TYPE_1__ mmu_notifier; int /*<<< orphan*/  is_32bit_user_mode; int /*<<< orphan*/  last_restore_timestamp; int /*<<< orphan*/  restore_work; int /*<<< orphan*/  eviction_work; int /*<<< orphan*/  per_device_data; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kfd_process* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  evict_process_worker ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,uintptr_t) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC8 (struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC9 (struct kfd_process*) ; 
 int FUNC10 (struct kfd_process*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC14 (struct kfd_process*) ; 
 int /*<<< orphan*/  kfd_process_mmu_notifier_ops ; 
 int /*<<< orphan*/  kfd_processes_table ; 
 int /*<<< orphan*/  FUNC15 (struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct kfd_process* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  restore_process_worker ; 

__attribute__((used)) static struct kfd_process *FUNC23(const struct task_struct *thread)
{
	struct kfd_process *process;
	int err = -ENOMEM;

	process = FUNC17(sizeof(*process), GFP_KERNEL);
	if (!process)
		goto err_alloc_process;

	FUNC16(&process->ref);
	FUNC20(&process->mutex);
	process->mm = thread->mm;
	process->lead_thread = thread->group_leader;
	FUNC2(&process->per_device_data);
	FUNC1(&process->eviction_work, evict_process_worker);
	FUNC1(&process->restore_work, restore_process_worker);
	process->last_restore_timestamp = FUNC3();
	FUNC8(process);
	process->is_32bit_user_mode = FUNC6();

	process->pasid = FUNC11();
	if (process->pasid == 0)
		goto err_alloc_pasid;

	if (FUNC7(process) < 0)
		goto err_alloc_doorbells;

	err = FUNC21(&process->pqm, process);
	if (err != 0)
		goto err_process_pqm_init;

	/* init process apertures*/
	err = FUNC10(process);
	if (err != 0)
		goto err_init_apertures;

	/* Must be last, have to use release destruction after this */
	process->mmu_notifier.ops = &kfd_process_mmu_notifier_ops;
	err = FUNC18(&process->mmu_notifier, process->mm);
	if (err)
		goto err_register_notifier;

	FUNC4(process->lead_thread);
	FUNC5(kfd_processes_table, &process->kfd_processes,
			(uintptr_t)process->mm);

	return process;

err_register_notifier:
	FUNC14(process);
	FUNC13(process);
err_init_apertures:
	FUNC22(&process->pqm);
err_process_pqm_init:
	FUNC9(process);
err_alloc_doorbells:
	FUNC12(process->pasid);
err_alloc_pasid:
	FUNC19(&process->mutex);
	FUNC15(process);
err_alloc_process:
	return FUNC0(err);
}