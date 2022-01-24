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
struct TYPE_8__ {int /*<<< orphan*/  type; int /*<<< orphan*/  vaddr; } ;
struct TYPE_7__ {int pde_ips; int /*<<< orphan*/  gfn; } ;
struct intel_vgpu_ppgtt_spt {TYPE_4__ shadow_page; TYPE_3__ guest_page; } ;
struct intel_vgpu {int /*<<< orphan*/  id; TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {int /*<<< orphan*/  (* get_pfn ) (struct intel_gvt_gtt_entry*) ;scalar_t__ (* test_ips ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {int /*<<< orphan*/  type; int /*<<< orphan*/  val64; } ;
struct TYPE_5__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_6__ {TYPE_1__ gtt; } ;

/* Variables and functions */
 int EINVAL ; 
 struct intel_vgpu_ppgtt_spt* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GTT_TYPE_PPGTT_PDE_ENTRY ; 
 scalar_t__ FUNC2 (struct intel_vgpu_ppgtt_spt*) ; 
 int FUNC3 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct intel_vgpu_ppgtt_spt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 struct intel_vgpu_ppgtt_spt* FUNC10 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 struct intel_vgpu_ppgtt_spt* FUNC11 (struct intel_vgpu*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_vgpu_ppgtt_spt*) ; 
 int FUNC14 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_vgpu_ppgtt_spt*) ; 
 scalar_t__ FUNC16 (struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,struct intel_vgpu_ppgtt_spt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct intel_vgpu*) ; 

__attribute__((used)) static struct intel_vgpu_ppgtt_spt *FUNC21(
		struct intel_vgpu *vgpu, struct intel_gvt_gtt_entry *we)
{
	struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
	struct intel_vgpu_ppgtt_spt *spt = NULL;
	bool ips = false;
	int ret;

	FUNC1(!FUNC6(FUNC5(we->type)));

	if (we->type == GTT_TYPE_PPGTT_PDE_ENTRY)
		ips = FUNC20(vgpu) && ops->test_ips(we);

	spt = FUNC10(vgpu, ops->get_pfn(we));
	if (spt) {
		FUNC13(spt);

		if (ips != spt->guest_page.pde_ips) {
			spt->guest_page.pde_ips = ips;

			FUNC7("reshadow PDE since ips changed\n");
			FUNC4(spt->shadow_page.vaddr);
			ret = FUNC14(spt);
			if (ret) {
				FUNC15(spt);
				goto err;
			}
		}
	} else {
		int type = FUNC5(we->type);

		if (!FUNC6(type)) {
			ret = -EINVAL;
			goto err;
		}

		spt = FUNC11(vgpu, type, ops->get_pfn(we), ips);
		if (FUNC2(spt)) {
			ret = FUNC3(spt);
			goto err;
		}

		ret = FUNC9(vgpu, spt->guest_page.gfn);
		if (ret)
			goto err_free_spt;

		ret = FUNC14(spt);
		if (ret)
			goto err_free_spt;

		FUNC19(vgpu->id, "new", spt, spt->guest_page.gfn,
				 spt->shadow_page.type);
	}
	return spt;

err_free_spt:
	FUNC12(spt);
	spt = NULL;
err:
	FUNC8("fail: shadow page %p guest entry 0x%llx type %d\n",
		     spt, we->val64, we->type);
	return FUNC0(ret);
}