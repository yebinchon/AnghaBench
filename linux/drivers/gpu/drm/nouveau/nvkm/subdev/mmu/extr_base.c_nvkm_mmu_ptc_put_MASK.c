#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_mmu_pt {int /*<<< orphan*/  memory; TYPE_2__* ptc; int /*<<< orphan*/  head; scalar_t__ sub; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct nvkm_mmu {TYPE_3__ ptc; TYPE_1__ ptp; } ;
struct TYPE_5__ {int refs; int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_mmu_pt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_mmu*,int,struct nvkm_mmu_pt*) ; 

void
FUNC6(struct nvkm_mmu *mmu, bool force, struct nvkm_mmu_pt **ppt)
{
	struct nvkm_mmu_pt *pt = *ppt;
	if (pt) {
		/* Handle sub-allocated page tables. */
		if (pt->sub) {
			FUNC2(&mmu->ptp.mutex);
			FUNC5(mmu, force, pt);
			FUNC3(&mmu->ptp.mutex);
			return;
		}

		/* Either cache or free the object. */
		FUNC2(&mmu->ptc.mutex);
		if (pt->ptc->refs < 8 /* Heuristic. */ && !force) {
			FUNC1(&pt->head, &pt->ptc->item);
			pt->ptc->refs++;
		} else {
			FUNC4(&pt->memory);
			FUNC0(pt);
		}
		FUNC3(&mmu->ptc.mutex);
	}
}