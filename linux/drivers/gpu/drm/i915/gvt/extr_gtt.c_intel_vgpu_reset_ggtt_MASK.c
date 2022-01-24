#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  ggtt_mm; } ;
struct intel_vgpu {TYPE_2__ gtt; struct intel_gvt* gvt; } ;
struct intel_gvt_gtt_pte_ops {int /*<<< orphan*/  (* set_present ) (struct intel_gvt_gtt_entry*) ;int /*<<< orphan*/  (* set_pfn ) (struct intel_gvt_gtt_entry*,int /*<<< orphan*/ ) ;} ;
struct intel_gvt_gtt_entry {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  scratch_mfn; struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct intel_gvt {TYPE_1__ gtt; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GTT_TYPE_GGTT_PTE ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct intel_gvt_gtt_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu*,struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct intel_gvt_gtt_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gvt_gtt_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_gvt_gtt_entry*) ; 
 int FUNC6 (struct intel_vgpu*) ; 
 int FUNC7 (struct intel_vgpu*) ; 
 int FUNC8 (struct intel_vgpu*) ; 
 int FUNC9 (struct intel_vgpu*) ; 

void FUNC10(struct intel_vgpu *vgpu, bool invalidate_old)
{
	struct intel_gvt *gvt = vgpu->gvt;
	struct drm_i915_private *dev_priv = gvt->dev_priv;
	struct intel_gvt_gtt_pte_ops *pte_ops = vgpu->gvt->gtt.pte_ops;
	struct intel_gvt_gtt_entry entry = {.type = GTT_TYPE_GGTT_PTE};
	struct intel_gvt_gtt_entry old_entry;
	u32 index;
	u32 num_entries;

	pte_ops->set_pfn(&entry, gvt->gtt.scratch_mfn);
	pte_ops->set_present(&entry);

	index = FUNC6(vgpu) >> PAGE_SHIFT;
	num_entries = FUNC7(vgpu) >> PAGE_SHIFT;
	while (num_entries--) {
		if (invalidate_old) {
			FUNC0(vgpu->gtt.ggtt_mm, &old_entry, index);
			FUNC2(vgpu, &old_entry);
		}
		FUNC3(vgpu->gtt.ggtt_mm, &entry, index++);
	}

	index = FUNC8(vgpu) >> PAGE_SHIFT;
	num_entries = FUNC9(vgpu) >> PAGE_SHIFT;
	while (num_entries--) {
		if (invalidate_old) {
			FUNC0(vgpu->gtt.ggtt_mm, &old_entry, index);
			FUNC2(vgpu, &old_entry);
		}
		FUNC3(vgpu->gtt.ggtt_mm, &entry, index++);
	}

	FUNC1(dev_priv);
}