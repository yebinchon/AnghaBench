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
typedef  unsigned long uint32_t ;
struct psb_mmu_pt {unsigned long* v; } ;
struct psb_mmu_pd {unsigned long invalid_pde; unsigned long invalid_pte; TYPE_1__* driver; int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  sem; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PSB_PTE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 size_t FUNC3 (unsigned long) ; 
 size_t FUNC4 (unsigned long) ; 
 struct psb_mmu_pt* FUNC5 (struct psb_mmu_pd*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct psb_mmu_pt*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct psb_mmu_pd *pd, uint32_t virtual,
			   unsigned long *pfn)
{
	int ret;
	struct psb_mmu_pt *pt;
	uint32_t tmp;
	spinlock_t *lock = &pd->driver->lock;

	FUNC0(&pd->driver->sem);
	pt = FUNC5(pd, virtual);
	if (!pt) {
		uint32_t *v;

		FUNC7(lock);
		v = FUNC1(pd->p);
		tmp = v[FUNC3(virtual)];
		FUNC2(v);
		FUNC8(lock);

		if (tmp != pd->invalid_pde || !(tmp & PSB_PTE_VALID) ||
		    !(pd->invalid_pte & PSB_PTE_VALID)) {
			ret = -EINVAL;
			goto out;
		}
		ret = 0;
		*pfn = pd->invalid_pte >> PAGE_SHIFT;
		goto out;
	}
	tmp = pt->v[FUNC4(virtual)];
	if (!(tmp & PSB_PTE_VALID)) {
		ret = -EINVAL;
	} else {
		ret = 0;
		*pfn = tmp >> PAGE_SHIFT;
	}
	FUNC6(pt);
out:
	FUNC9(&pd->driver->sem);
	return ret;
}