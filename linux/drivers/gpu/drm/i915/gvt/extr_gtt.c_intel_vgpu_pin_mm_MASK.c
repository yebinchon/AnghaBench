#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lru_list; } ;
struct intel_vgpu_mm {scalar_t__ type; TYPE_3__* vgpu; TYPE_1__ ppgtt_mm; int /*<<< orphan*/  pincount; } ;
struct TYPE_8__ {int /*<<< orphan*/  ppgtt_mm_lock; int /*<<< orphan*/  ppgtt_mm_lru_list_head; } ;
struct TYPE_7__ {TYPE_2__* gvt; } ;
struct TYPE_6__ {TYPE_4__ gtt; } ;

/* Variables and functions */
 scalar_t__ INTEL_GVT_MM_PPGTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct intel_vgpu_mm*) ; 

int FUNC5(struct intel_vgpu_mm *mm)
{
	int ret;

	FUNC0(&mm->pincount);

	if (mm->type == INTEL_GVT_MM_PPGTT) {
		ret = FUNC4(mm);
		if (ret)
			return ret;

		FUNC2(&mm->vgpu->gvt->gtt.ppgtt_mm_lock);
		FUNC1(&mm->ppgtt_mm.lru_list,
			       &mm->vgpu->gvt->gtt.ppgtt_mm_lru_list_head);
		FUNC3(&mm->vgpu->gvt->gtt.ppgtt_mm_lock);
	}

	return 0;
}