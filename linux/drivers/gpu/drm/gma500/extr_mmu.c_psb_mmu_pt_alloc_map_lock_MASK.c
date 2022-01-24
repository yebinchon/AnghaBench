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
typedef  size_t uint32_t ;
struct psb_mmu_pt {size_t index; int /*<<< orphan*/  p; void* v; } ;
struct psb_mmu_pd {int pd_mask; int hw_context; TYPE_1__* driver; struct psb_mmu_pt** tables; int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  needs_tlbflush; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct psb_mmu_pt* FUNC4 (struct psb_mmu_pd*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct psb_mmu_pt*) ; 
 size_t FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct psb_mmu_pt *FUNC10(struct psb_mmu_pd *pd,
					     unsigned long addr)
{
	uint32_t index = FUNC7(addr);
	struct psb_mmu_pt *pt;
	uint32_t *v;
	spinlock_t *lock = &pd->driver->lock;

	FUNC8(lock);
	pt = pd->tables[index];
	while (!pt) {
		FUNC9(lock);
		pt = FUNC4(pd);
		if (!pt)
			return NULL;
		FUNC8(lock);

		if (pd->tables[index]) {
			FUNC9(lock);
			FUNC6(pt);
			FUNC8(lock);
			pt = pd->tables[index];
			continue;
		}

		v = FUNC1(pd->p);
		pd->tables[index] = pt;
		v[index] = (FUNC3(pt->p) << 12) | pd->pd_mask;
		pt->index = index;
		FUNC2((void *) v);

		if (pd->hw_context != -1) {
			FUNC5(pd->driver, (void *)&v[index]);
			FUNC0(&pd->driver->needs_tlbflush, 1);
		}
	}
	pt->v = FUNC1(pt->p);
	return pt;
}