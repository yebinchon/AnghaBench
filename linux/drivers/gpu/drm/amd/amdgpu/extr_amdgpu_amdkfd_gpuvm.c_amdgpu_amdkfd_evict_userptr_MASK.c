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
struct kgd_mem {int /*<<< orphan*/  invalid; struct amdkfd_process_info* process_info; } ;
struct amdkfd_process_info {int /*<<< orphan*/  restore_userptr_work; int /*<<< orphan*/  evicted_bos; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_USERPTR_RESTORE_DELAY_MS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct kgd_mem *mem,
				struct mm_struct *mm)
{
	struct amdkfd_process_info *process_info = mem->process_info;
	int invalid, evicted_bos;
	int r = 0;

	invalid = FUNC0(&mem->invalid);
	evicted_bos = FUNC0(&process_info->evicted_bos);
	if (evicted_bos == 1) {
		/* First eviction, stop the queues */
		r = FUNC1(mm);
		if (r)
			FUNC3("Failed to quiesce KFD\n");
		FUNC4(&process_info->restore_userptr_work,
			FUNC2(AMDGPU_USERPTR_RESTORE_DELAY_MS));
	}

	return r;
}