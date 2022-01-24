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
struct kfd_process {int dummy; } ;

/* Variables and functions */
 int ESRCH ; 
 struct kfd_process* FUNC0 (struct mm_struct*) ; 
 int FUNC1 (struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC2 (struct kfd_process*) ; 

int FUNC3(struct mm_struct *mm)
{
	struct kfd_process *p;
	int r;

	/* Because we are called from arbitrary context (workqueue) as opposed
	 * to process context, kfd_process could attempt to exit while we are
	 * running so the lookup function increments the process ref count.
	 */
	p = FUNC0(mm);
	if (!p)
		return -ESRCH;

	r = FUNC1(p);

	FUNC2(p);
	return r;
}