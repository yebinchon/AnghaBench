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
typedef  int /*<<< orphan*/  uint32_t ;
struct psb_mmu_pt {scalar_t__ count; size_t index; int /*<<< orphan*/ * v; struct psb_mmu_pd* pd; } ;
struct psb_mmu_pd {int hw_context; TYPE_1__* driver; int /*<<< orphan*/ ** tables; int /*<<< orphan*/  invalid_pde; int /*<<< orphan*/  p; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  needs_tlbflush; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct psb_mmu_pt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct psb_mmu_pt *pt)
{
	struct psb_mmu_pd *pd = pt->pd;
	uint32_t *v;

	FUNC2(pt->v);
	if (pt->count == 0) {
		v = FUNC1(pd->p);
		v[pt->index] = pd->invalid_pde;
		pd->tables[pt->index] = NULL;

		if (pd->hw_context != -1) {
			FUNC3(pd->driver, (void *)&v[pt->index]);
			FUNC0(&pd->driver->needs_tlbflush, 1);
		}
		FUNC2(v);
		FUNC5(&pd->driver->lock);
		FUNC4(pt);
		return;
	}
	FUNC5(&pd->driver->lock);
}