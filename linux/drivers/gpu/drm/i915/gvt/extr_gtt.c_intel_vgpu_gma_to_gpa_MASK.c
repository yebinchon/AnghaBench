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
struct TYPE_4__ {scalar_t__ root_entry_type; } ;
struct intel_vgpu_mm {scalar_t__ type; TYPE_2__ ppgtt_mm; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int /*<<< orphan*/  id; struct intel_gvt* gvt; } ;
struct intel_gvt_gtt_pte_ops {unsigned long (* get_pfn ) (struct intel_gvt_gtt_entry*) ;int /*<<< orphan*/  (* test_present ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_gma_ops {unsigned long (* gma_to_pml4_index ) (unsigned long) ;unsigned long (* gma_to_l4_pdp_index ) (unsigned long) ;unsigned long (* gma_to_pde_index ) (unsigned long) ;unsigned long (* gma_to_pte_index ) (unsigned long) ;int /*<<< orphan*/  (* gma_to_l3_pdp_index ) (unsigned long) ;int /*<<< orphan*/  (* gma_to_ggtt_pte_index ) (unsigned long) ;} ;
struct intel_gvt_gtt_entry {int dummy; } ;
struct TYPE_3__ {struct intel_gvt_gtt_gma_ops* gma_ops; struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct intel_gvt {TYPE_1__ gtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  GTT_TYPE_PPGTT_ROOT_L3_ENTRY 129 
#define  GTT_TYPE_PPGTT_ROOT_L4_ENTRY 128 
 unsigned long I915_GTT_PAGE_MASK ; 
 unsigned long I915_GTT_PAGE_SHIFT ; 
 unsigned long INTEL_GVT_INVALID_ADDR ; 
 scalar_t__ INTEL_GVT_MM_GGTT ; 
 scalar_t__ INTEL_GVT_MM_PPGTT ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu_mm*,struct intel_gvt_gtt_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,unsigned long) ; 
 int FUNC4 (struct intel_vgpu_mm*,struct intel_gvt_gtt_entry*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_vgpu_mm*,struct intel_gvt_gtt_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_gvt_gtt_entry*) ; 
 unsigned long FUNC8 (struct intel_gvt_gtt_entry*) ; 
 unsigned long FUNC9 (struct intel_gvt_gtt_entry*) ; 
 unsigned long FUNC10 (unsigned long) ; 
 unsigned long FUNC11 (unsigned long) ; 
 unsigned long FUNC12 (unsigned long) ; 
 unsigned long FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 
 unsigned long FUNC15 (unsigned long) ; 
 unsigned long FUNC16 (unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_vgpu*,unsigned long) ; 

unsigned long FUNC19(struct intel_vgpu_mm *mm, unsigned long gma)
{
	struct intel_vgpu *vgpu = mm->vgpu;
	struct intel_gvt *gvt = vgpu->gvt;
	struct intel_gvt_gtt_pte_ops *pte_ops = gvt->gtt.pte_ops;
	struct intel_gvt_gtt_gma_ops *gma_ops = gvt->gtt.gma_ops;
	unsigned long gpa = INTEL_GVT_INVALID_ADDR;
	unsigned long gma_index[4];
	struct intel_gvt_gtt_entry e;
	int i, levels = 0;
	int ret;

	FUNC0(mm->type != INTEL_GVT_MM_GGTT &&
		   mm->type != INTEL_GVT_MM_PPGTT);

	if (mm->type == INTEL_GVT_MM_GGTT) {
		if (!FUNC18(vgpu, gma))
			goto err;

		FUNC1(mm, &e,
			gma_ops->gma_to_ggtt_pte_index(gma));

		gpa = (pte_ops->get_pfn(&e) << I915_GTT_PAGE_SHIFT)
			+ (gma & ~I915_GTT_PAGE_MASK);

		FUNC17(vgpu->id, "ggtt", 0, 0, gma, gpa);
	} else {
		switch (mm->ppgtt_mm.root_entry_type) {
		case GTT_TYPE_PPGTT_ROOT_L4_ENTRY:
			FUNC5(mm, &e, 0);

			gma_index[0] = gma_ops->gma_to_pml4_index(gma);
			gma_index[1] = gma_ops->gma_to_l4_pdp_index(gma);
			gma_index[2] = gma_ops->gma_to_pde_index(gma);
			gma_index[3] = gma_ops->gma_to_pte_index(gma);
			levels = 4;
			break;
		case GTT_TYPE_PPGTT_ROOT_L3_ENTRY:
			FUNC5(mm, &e,
					gma_ops->gma_to_l3_pdp_index(gma));

			gma_index[0] = gma_ops->gma_to_pde_index(gma);
			gma_index[1] = gma_ops->gma_to_pte_index(gma);
			levels = 2;
			break;
		default:
			FUNC0(1);
		}

		/* walk the shadow page table and get gpa from guest entry */
		for (i = 0; i < levels; i++) {
			ret = FUNC4(mm, &e, gma_index[i],
				(i == levels - 1));
			if (ret)
				goto err;

			if (!pte_ops->test_present(&e)) {
				FUNC2("GMA 0x%lx is not present\n", gma);
				goto err;
			}
		}

		gpa = (pte_ops->get_pfn(&e) << I915_GTT_PAGE_SHIFT) +
					(gma & ~I915_GTT_PAGE_MASK);
		FUNC17(vgpu->id, "ppgtt", 0,
				    mm->ppgtt_mm.root_entry_type, gma, gpa);
	}

	return gpa;
err:
	FUNC3("invalid mm type: %d gma %lx\n", mm->type, gma);
	return INTEL_GVT_INVALID_ADDR;
}