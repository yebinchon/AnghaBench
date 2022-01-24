#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct execlist_ctx_descriptor_format {int addressing_mode; } ;
struct intel_vgpu_workload {struct intel_vgpu_mm* shadow_mm; struct intel_vgpu* vgpu; int /*<<< orphan*/  ring_context_gpa; struct execlist_ctx_descriptor_format ctx_desc; } ;
struct intel_vgpu_mm {int dummy; } ;
struct intel_vgpu {int dummy; } ;
typedef  enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;

/* Variables and functions */
 int EINVAL ; 
 int GTT_TYPE_PPGTT_ROOT_L3_ENTRY ; 
 int GTT_TYPE_PPGTT_ROOT_L4_ENTRY ; 
 int GVT_RING_CTX_NR_PDPS ; 
 scalar_t__ FUNC0 (struct intel_vgpu_mm*) ; 
 int FUNC1 (struct intel_vgpu_mm*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct intel_vgpu_mm* FUNC3 (struct intel_vgpu*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC5(struct intel_vgpu_workload *workload)
{
	struct execlist_ctx_descriptor_format *desc = &workload->ctx_desc;
	struct intel_vgpu_mm *mm;
	struct intel_vgpu *vgpu = workload->vgpu;
	enum intel_gvt_gtt_type root_entry_type;
	u64 pdps[GVT_RING_CTX_NR_PDPS];

	switch (desc->addressing_mode) {
	case 1: /* legacy 32-bit */
		root_entry_type = GTT_TYPE_PPGTT_ROOT_L3_ENTRY;
		break;
	case 3: /* legacy 64-bit */
		root_entry_type = GTT_TYPE_PPGTT_ROOT_L4_ENTRY;
		break;
	default:
		FUNC2("Advanced Context mode(SVM) is not supported!\n");
		return -EINVAL;
	}

	FUNC4(workload->vgpu, workload->ring_context_gpa, (void *)pdps);

	mm = FUNC3(workload->vgpu, root_entry_type, pdps);
	if (FUNC0(mm))
		return FUNC1(mm);

	workload->shadow_mm = mm;
	return 0;
}