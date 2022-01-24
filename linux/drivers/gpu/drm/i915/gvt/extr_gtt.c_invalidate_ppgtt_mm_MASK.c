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
struct TYPE_2__ {int shadowed; int /*<<< orphan*/  shadow_pdps; } ;
struct intel_vgpu_mm {TYPE_1__ ppgtt_mm; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int /*<<< orphan*/  id; struct intel_gvt* gvt; } ;
struct intel_gvt_gtt_pte_ops {int /*<<< orphan*/  (* test_present ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {scalar_t__ val64; int /*<<< orphan*/  type; } ;
struct intel_gvt_gtt {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct intel_gvt {struct intel_gvt_gtt gtt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu_mm*,struct intel_gvt_gtt_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu*,struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu_mm*,struct intel_gvt_gtt_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC6(struct intel_vgpu_mm *mm)
{
	struct intel_vgpu *vgpu = mm->vgpu;
	struct intel_gvt *gvt = vgpu->gvt;
	struct intel_gvt_gtt *gtt = &gvt->gtt;
	struct intel_gvt_gtt_pte_ops *ops = gtt->pte_ops;
	struct intel_gvt_gtt_entry se;
	int index;

	if (!mm->ppgtt_mm.shadowed)
		return;

	for (index = 0; index < FUNC0(mm->ppgtt_mm.shadow_pdps); index++) {
		FUNC1(mm, &se, index);

		if (!ops->test_present(&se))
			continue;

		FUNC2(vgpu, &se);
		se.val64 = 0;
		FUNC3(mm, &se, index);

		FUNC5(vgpu->id, "destroy root pointer",
				       NULL, se.type, se.val64, index);
	}

	mm->ppgtt_mm.shadowed = false;
}