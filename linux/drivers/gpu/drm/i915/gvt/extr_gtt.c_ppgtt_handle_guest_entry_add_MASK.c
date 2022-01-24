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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct intel_vgpu_ppgtt_spt {TYPE_1__ shadow_page; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int /*<<< orphan*/  id; } ;
struct intel_gvt_gtt_entry {int /*<<< orphan*/  type; int /*<<< orphan*/  val64; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct intel_vgpu_ppgtt_spt*) ; 
 int FUNC1 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct intel_vgpu_ppgtt_spt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_gvt_gtt_entry*,struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ; 
 int FUNC8 (struct intel_vgpu*,struct intel_vgpu_ppgtt_spt*,unsigned long,struct intel_gvt_gtt_entry*) ; 
 struct intel_vgpu_ppgtt_spt* FUNC9 (struct intel_vgpu*,struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,struct intel_vgpu_ppgtt_spt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct intel_vgpu_ppgtt_spt *spt,
		struct intel_gvt_gtt_entry *we, unsigned long index)
{
	struct intel_vgpu *vgpu = spt->vgpu;
	struct intel_gvt_gtt_entry m;
	struct intel_vgpu_ppgtt_spt *s;
	int ret;

	FUNC11(spt->vgpu->id, "add", spt, spt->shadow_page.type,
			       we->val64, index);

	FUNC4("add shadow entry: type %d, index %lu, value %llx\n",
		    we->type, index, we->val64);

	if (FUNC3(FUNC2(we->type))) {
		s = FUNC9(vgpu, we);
		if (FUNC0(s)) {
			ret = FUNC1(s);
			goto fail;
		}
		FUNC7(spt, &m, index);
		FUNC6(&m, s, we);
		FUNC10(spt, &m, index);
	} else {
		ret = FUNC8(vgpu, spt, index, we);
		if (ret)
			goto fail;
	}
	return 0;
fail:
	FUNC5("fail: spt %p guest entry 0x%llx type %d\n",
		spt, we->val64, we->type);
	return ret;
}