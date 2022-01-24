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
struct TYPE_2__ {int /*<<< orphan*/  owning_mm; } ;
struct ib_umem_odp {TYPE_1__ umem; int /*<<< orphan*/  notifier_completion; int /*<<< orphan*/  interval_tree; int /*<<< orphan*/  is_implicit_odp; int /*<<< orphan*/  page_list; int /*<<< orphan*/  dma_list; int /*<<< orphan*/  umem_mutex; struct ib_ucontext_per_mm* per_mm; } ;
struct ib_ucontext_per_mm {int /*<<< orphan*/  umem_rwsem; int /*<<< orphan*/  mn; int /*<<< orphan*/  umem_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_umem_odp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_umem_odp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_umem_odp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_umem_odp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct ib_umem_odp *umem_odp)
{
	struct ib_ucontext_per_mm *per_mm = umem_odp->per_mm;

	/*
	 * Ensure that no more pages are mapped in the umem.
	 *
	 * It is the driver's responsibility to ensure, before calling us,
	 * that the hardware will not attempt to access the MR any more.
	 */
	if (!umem_odp->is_implicit_odp) {
		FUNC10(&umem_odp->umem_mutex);
		FUNC3(umem_odp, FUNC4(umem_odp),
					    FUNC2(umem_odp));
		FUNC11(&umem_odp->umem_mutex);
		FUNC7(umem_odp->dma_list);
		FUNC7(umem_odp->page_list);
	}

	FUNC1(&per_mm->umem_rwsem);
	if (!umem_odp->is_implicit_odp) {
		FUNC5(&umem_odp->interval_tree,
				     &per_mm->umem_tree);
		FUNC0(&umem_odp->notifier_completion);
	}
	/*
	 * NOTE! mmu_notifier_unregister() can happen between a start/end
	 * callback, resulting in a missing end, and thus an unbalanced
	 * lock. This doesn't really matter to us since we are about to kfree
	 * the memory that holds the lock, however LOCKDEP doesn't like this.
	 * Thus we call the mmu_notifier_put under the rwsem and test the
	 * internal users count to reliably see if we are past this point.
	 */
	FUNC9(&per_mm->mn);
	FUNC12(&per_mm->umem_rwsem);

	FUNC8(umem_odp->umem.owning_mm);
	FUNC6(umem_odp);
}