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
struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;
struct ib_ucontext_per_mm {struct mmu_notifier mn; int /*<<< orphan*/  tgid; int /*<<< orphan*/  umem_rwsem; int /*<<< orphan*/  umem_tree; } ;
struct TYPE_2__ {int /*<<< orphan*/  group_leader; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mmu_notifier* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ib_ucontext_per_mm* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static struct mmu_notifier *FUNC7(struct mm_struct *mm)
{
	struct ib_ucontext_per_mm *per_mm;

	per_mm = FUNC4(sizeof(*per_mm), GFP_KERNEL);
	if (!per_mm)
		return FUNC0(-ENOMEM);

	per_mm->umem_tree = RB_ROOT_CACHED;
	FUNC3(&per_mm->umem_rwsem);

	FUNC1(mm != current->mm);
	FUNC5();
	per_mm->tgid = FUNC2(current->group_leader, PIDTYPE_PID);
	FUNC6();
	return &per_mm->mn;
}