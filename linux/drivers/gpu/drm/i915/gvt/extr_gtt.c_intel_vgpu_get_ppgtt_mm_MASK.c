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
struct intel_vgpu_mm {int dummy; } ;
struct intel_vgpu {int dummy; } ;
typedef  enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct intel_vgpu_mm*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct intel_vgpu_mm* FUNC2 (struct intel_vgpu*,int,int /*<<< orphan*/ *) ; 
 struct intel_vgpu_mm* FUNC3 (struct intel_vgpu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu_mm*) ; 

struct intel_vgpu_mm *FUNC5(struct intel_vgpu *vgpu,
		enum intel_gvt_gtt_type root_entry_type, u64 pdps[])
{
	struct intel_vgpu_mm *mm;

	mm = FUNC3(vgpu, pdps);
	if (mm) {
		FUNC4(mm);
	} else {
		mm = FUNC2(vgpu, root_entry_type, pdps);
		if (FUNC0(mm))
			FUNC1("fail to create mm\n");
	}
	return mm;
}