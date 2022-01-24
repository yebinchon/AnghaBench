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
struct psb_mmu_pt {int /*<<< orphan*/  p; int /*<<< orphan*/  v; } ;
struct psb_mmu_pd {struct psb_mmu_pt** tables; TYPE_1__* driver; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct psb_mmu_pt *FUNC4(struct psb_mmu_pd *pd,
					      unsigned long addr)
{
	uint32_t index = FUNC1(addr);
	struct psb_mmu_pt *pt;
	spinlock_t *lock = &pd->driver->lock;

	FUNC2(lock);
	pt = pd->tables[index];
	if (!pt) {
		FUNC3(lock);
		return NULL;
	}
	pt->v = FUNC0(pt->p);
	return pt;
}