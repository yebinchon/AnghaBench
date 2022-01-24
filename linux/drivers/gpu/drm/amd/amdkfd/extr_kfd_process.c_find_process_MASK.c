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
struct task_struct {int /*<<< orphan*/  mm; } ;
struct kfd_process {int dummy; } ;

/* Variables and functions */
 struct kfd_process* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kfd_processes_srcu ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct kfd_process *FUNC3(const struct task_struct *thread)
{
	struct kfd_process *p;
	int idx;

	idx = FUNC1(&kfd_processes_srcu);
	p = FUNC0(thread->mm);
	FUNC2(&kfd_processes_srcu, idx);

	return p;
}