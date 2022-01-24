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
struct kfd_process {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 struct kfd_process* FUNC0 (struct mm_struct const*) ; 
 int /*<<< orphan*/  kfd_processes_srcu ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

struct kfd_process *FUNC4(const struct mm_struct *mm)
{
	struct kfd_process *p;

	int idx = FUNC2(&kfd_processes_srcu);

	p = FUNC0(mm);
	if (p)
		FUNC1(&p->ref);

	FUNC3(&kfd_processes_srcu, idx);

	return p;
}