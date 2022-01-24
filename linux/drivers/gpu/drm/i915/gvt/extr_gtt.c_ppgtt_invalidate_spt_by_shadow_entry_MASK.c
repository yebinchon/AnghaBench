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
struct intel_vgpu_ppgtt_spt {int dummy; } ;
struct TYPE_8__ {TYPE_3__* scratch_pt; } ;
struct intel_vgpu {TYPE_4__ gtt; TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {scalar_t__ (* get_pfn ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {scalar_t__ type; } ;
typedef  enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;
struct TYPE_7__ {scalar_t__ page_mfn; } ;
struct TYPE_5__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_6__ {TYPE_1__ gtt; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ GTT_TYPE_PPGTT_ROOT_L3_ENTRY ; 
 scalar_t__ GTT_TYPE_PPGTT_ROOT_L4_ENTRY ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 struct intel_vgpu_ppgtt_spt* FUNC5 (struct intel_vgpu*,scalar_t__) ; 
 int FUNC6 (struct intel_vgpu_ppgtt_spt*) ; 
 scalar_t__ FUNC7 (struct intel_gvt_gtt_entry*) ; 
 scalar_t__ FUNC8 (struct intel_gvt_gtt_entry*) ; 
 scalar_t__ FUNC9 (struct intel_gvt_gtt_entry*) ; 

__attribute__((used)) static int FUNC10(struct intel_vgpu *vgpu,
		struct intel_gvt_gtt_entry *e)
{
	struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
	struct intel_vgpu_ppgtt_spt *s;
	enum intel_gvt_gtt_type cur_pt_type;

	FUNC0(!FUNC3(FUNC2(e->type)));

	if (e->type != GTT_TYPE_PPGTT_ROOT_L3_ENTRY
		&& e->type != GTT_TYPE_PPGTT_ROOT_L4_ENTRY) {
		cur_pt_type = FUNC2(e->type);

		if (!FUNC3(cur_pt_type) ||
				!FUNC3(cur_pt_type + 1)) {
			FUNC1(1, "Invalid page table type, cur_pt_type is: %d\n", cur_pt_type);
			return -EINVAL;
		}

		cur_pt_type += 1;

		if (ops->get_pfn(e) ==
			vgpu->gtt.scratch_pt[cur_pt_type].page_mfn)
			return 0;
	}
	s = FUNC5(vgpu, ops->get_pfn(e));
	if (!s) {
		FUNC4("fail to find shadow page: mfn: 0x%lx\n",
				ops->get_pfn(e));
		return -ENXIO;
	}
	return FUNC6(s);
}