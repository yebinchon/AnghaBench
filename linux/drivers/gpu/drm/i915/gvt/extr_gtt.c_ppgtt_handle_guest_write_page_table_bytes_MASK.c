#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_14__ {TYPE_6__* oos_page; int /*<<< orphan*/  write_cnt; } ;
struct TYPE_10__ {int type; } ;
struct intel_vgpu_ppgtt_spt {TYPE_7__ guest_page; TYPE_3__ shadow_page; int /*<<< orphan*/  post_shadow_bitmap; struct intel_vgpu* vgpu; } ;
struct TYPE_12__ {TYPE_4__* scratch_pt; } ;
struct intel_vgpu {TYPE_5__ gtt; TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {int /*<<< orphan*/  (* set_entry ) (int /*<<< orphan*/ ,struct intel_gvt_gtt_entry*,unsigned long,int,int /*<<< orphan*/ ,struct intel_vgpu*) ;int /*<<< orphan*/  (* set_pfn ) (struct intel_gvt_gtt_entry*,int /*<<< orphan*/ ) ;} ;
struct intel_gvt_gtt_entry {scalar_t__ type; } ;
struct intel_gvt_device_info {int gtt_entry_size_shift; int gtt_entry_size; } ;
struct TYPE_13__ {int /*<<< orphan*/  mem; } ;
struct TYPE_11__ {int /*<<< orphan*/  page_mfn; } ;
struct TYPE_8__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_9__ {struct intel_gvt_device_info device_info; TYPE_1__ gtt; } ;

/* Variables and functions */
 unsigned long GTT_64K_PTE_STRIDE ; 
 scalar_t__ GTT_TYPE_PPGTT_PTE_64K_ENTRY ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  enable_out_of_sync ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ; 
 int FUNC5 (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ; 
 int FUNC6 (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ; 
 int FUNC7 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_vgpu_ppgtt_spt*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_gvt_gtt_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct intel_gvt_gtt_entry*,unsigned long,int,int /*<<< orphan*/ ,struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(
		struct intel_vgpu_ppgtt_spt *spt,
		u64 pa, void *p_data, int bytes)
{
	struct intel_vgpu *vgpu = spt->vgpu;
	struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
	const struct intel_gvt_device_info *info = &vgpu->gvt->device_info;
	struct intel_gvt_gtt_entry we, se;
	unsigned long index;
	int ret;

	index = (pa & (PAGE_SIZE - 1)) >> info->gtt_entry_size_shift;

	FUNC3(spt, &we, index);

	/*
	 * For page table which has 64K gtt entry, only PTE#0, PTE#16,
	 * PTE#32, ... PTE#496 are used. Unused PTEs update should be
	 * ignored.
	 */
	if (we.type == GTT_TYPE_PPGTT_PTE_64K_ENTRY &&
	    (index % GTT_64K_PTE_STRIDE)) {
		FUNC1("Ignore write to unused PTE entry, index %lu\n",
			    index);
		return 0;
	}

	if (bytes == info->gtt_entry_size) {
		ret = FUNC6(spt, &we, index);
		if (ret)
			return ret;
	} else {
		if (!FUNC12(index, spt->post_shadow_bitmap)) {
			int type = spt->shadow_page.type;

			FUNC4(spt, &se, index);
			ret = FUNC5(spt, &se, index);
			if (ret)
				return ret;
			ops->set_pfn(&se, vgpu->gtt.scratch_pt[type].page_mfn);
			FUNC9(spt, &se, index);
		}
		FUNC8(spt, index);
	}

	if (!enable_out_of_sync)
		return 0;

	spt->guest_page.write_cnt++;

	if (spt->guest_page.oos_page)
		ops->set_entry(spt->guest_page.oos_page->mem, &we, index,
				false, 0, vgpu);

	if (FUNC0(spt)) {
		if (!spt->guest_page.oos_page)
			FUNC2(spt);

		ret = FUNC7(spt);
		if (ret < 0)
			return ret;
	}
	return 0;
}