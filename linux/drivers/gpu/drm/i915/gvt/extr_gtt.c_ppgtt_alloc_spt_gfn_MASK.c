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
struct TYPE_3__ {int /*<<< orphan*/  mfn; } ;
struct TYPE_4__ {int type; unsigned long gfn; int pde_ips; } ;
struct intel_vgpu_ppgtt_spt {TYPE_1__ shadow_page; TYPE_2__ guest_page; } ;
struct intel_vgpu {int /*<<< orphan*/  id; } ;
typedef  enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;

/* Variables and functions */
 struct intel_vgpu_ppgtt_spt* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct intel_vgpu_ppgtt_spt*) ; 
 int FUNC2 (struct intel_vgpu*,unsigned long,int /*<<< orphan*/ ,struct intel_vgpu_ppgtt_spt*) ; 
 struct intel_vgpu_ppgtt_spt* FUNC3 (struct intel_vgpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  ppgtt_write_protection_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct intel_vgpu_ppgtt_spt*,int,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static struct intel_vgpu_ppgtt_spt *FUNC6(
		struct intel_vgpu *vgpu, enum intel_gvt_gtt_type type,
		unsigned long gfn, bool guest_pde_ips)
{
	struct intel_vgpu_ppgtt_spt *spt;
	int ret;

	spt = FUNC3(vgpu, type);
	if (FUNC1(spt))
		return spt;

	/*
	 * Init guest_page.
	 */
	ret = FUNC2(vgpu, gfn,
			ppgtt_write_protection_handler, spt);
	if (ret) {
		FUNC4(spt);
		return FUNC0(ret);
	}

	spt->guest_page.type = type;
	spt->guest_page.gfn = gfn;
	spt->guest_page.pde_ips = guest_pde_ips;

	FUNC5(vgpu->id, spt, type, spt->shadow_page.mfn, gfn);

	return spt;
}