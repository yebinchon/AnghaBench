#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t type; } ;
struct intel_vgpu_ppgtt_spt {TYPE_5__ shadow_page; struct intel_vgpu* vgpu; } ;
struct TYPE_9__ {TYPE_3__* scratch_pt; } ;
struct intel_vgpu {TYPE_4__ gtt; int /*<<< orphan*/  id; TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {scalar_t__ (* get_pfn ) (struct intel_gvt_gtt_entry*) ;int /*<<< orphan*/  (* test_present ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {scalar_t__ type; int /*<<< orphan*/  val64; } ;
struct TYPE_8__ {scalar_t__ page_mfn; } ;
struct TYPE_6__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_7__ {TYPE_1__ gtt; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ GTT_TYPE_PPGTT_PTE_64K_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct intel_vgpu_ppgtt_spt* FUNC5 (struct intel_vgpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*) ; 
 int FUNC7 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_gvt_gtt_entry*) ; 
 scalar_t__ FUNC9 (struct intel_gvt_gtt_entry*) ; 
 scalar_t__ FUNC10 (struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,struct intel_vgpu_ppgtt_spt*,size_t,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct intel_vgpu_ppgtt_spt *spt,
		struct intel_gvt_gtt_entry *se, unsigned long index)
{
	struct intel_vgpu *vgpu = spt->vgpu;
	struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
	int ret;

	FUNC11(spt->vgpu->id, "remove", spt,
			       spt->shadow_page.type, se->val64, index);

	FUNC3("destroy old shadow entry, type %d, index %lu, value %llx\n",
		    se->type, index, se->val64);

	if (!ops->test_present(se))
		return 0;

	if (ops->get_pfn(se) ==
	    vgpu->gtt.scratch_pt[spt->shadow_page.type].page_mfn)
		return 0;

	if (FUNC2(FUNC1(se->type))) {
		struct intel_vgpu_ppgtt_spt *s =
			FUNC5(vgpu, ops->get_pfn(se));
		if (!s) {
			FUNC4("fail to find guest page\n");
			ret = -ENXIO;
			goto fail;
		}
		ret = FUNC7(s);
		if (ret)
			goto fail;
	} else {
		/* We don't setup 64K shadow entry so far. */
		FUNC0(se->type == GTT_TYPE_PPGTT_PTE_64K_ENTRY,
		     "suspicious 64K entry\n");
		FUNC6(spt, se);
	}

	return 0;
fail:
	FUNC4("fail: shadow page %p guest entry 0x%llx type %d\n",
			spt, se->val64, se->type);
	return ret;
}