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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {int root_entry_type; int /*<<< orphan*/  lru_list; int /*<<< orphan*/  list; int /*<<< orphan*/ * guest_pdps; } ;
struct intel_vgpu_mm {TYPE_2__ ppgtt_mm; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  ppgtt_mm_list_head; } ;
struct intel_vgpu {TYPE_1__ gtt; struct intel_gvt* gvt; } ;
struct TYPE_6__ {int /*<<< orphan*/  ppgtt_mm_lock; int /*<<< orphan*/  ppgtt_mm_lru_list_head; } ;
struct intel_gvt {TYPE_3__ gtt; } ;
typedef  enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;

/* Variables and functions */
 int ENOMEM ; 
 struct intel_vgpu_mm* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int GTT_TYPE_PPGTT_ROOT_L3_ENTRY ; 
 int GTT_TYPE_PPGTT_ROOT_L4_ENTRY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTEL_GVT_MM_PPGTT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct intel_vgpu_mm*) ; 
 struct intel_vgpu_mm* FUNC9 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_vgpu_mm*) ; 

struct intel_vgpu_mm *FUNC11(struct intel_vgpu *vgpu,
		enum intel_gvt_gtt_type root_entry_type, u64 pdps[])
{
	struct intel_gvt *gvt = vgpu->gvt;
	struct intel_vgpu_mm *mm;
	int ret;

	mm = FUNC9(vgpu);
	if (!mm)
		return FUNC0(-ENOMEM);

	mm->type = INTEL_GVT_MM_PPGTT;

	FUNC1(root_entry_type != GTT_TYPE_PPGTT_ROOT_L3_ENTRY &&
		   root_entry_type != GTT_TYPE_PPGTT_ROOT_L4_ENTRY);
	mm->ppgtt_mm.root_entry_type = root_entry_type;

	FUNC2(&mm->ppgtt_mm.list);
	FUNC2(&mm->ppgtt_mm.lru_list);

	if (root_entry_type == GTT_TYPE_PPGTT_ROOT_L4_ENTRY)
		mm->ppgtt_mm.guest_pdps[0] = pdps[0];
	else
		FUNC5(mm->ppgtt_mm.guest_pdps, pdps,
		       sizeof(mm->ppgtt_mm.guest_pdps));

	ret = FUNC8(mm);
	if (ret) {
		FUNC3("failed to shadow ppgtt mm\n");
		FUNC10(mm);
		return FUNC0(ret);
	}

	FUNC4(&mm->ppgtt_mm.list, &vgpu->gtt.ppgtt_mm_list_head);

	FUNC6(&gvt->gtt.ppgtt_mm_lock);
	FUNC4(&mm->ppgtt_mm.lru_list, &gvt->gtt.ppgtt_mm_lru_list_head);
	FUNC7(&gvt->gtt.ppgtt_mm_lock);

	return mm;
}