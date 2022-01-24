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
struct intel_vgpu {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {scalar_t__ hypervisor_type; } ;
struct TYPE_3__ {int /*<<< orphan*/ * va; scalar_t__ mapped; } ;

/* Variables and functions */
 scalar_t__ INTEL_GVT_HYPERVISOR_KVM ; 
 scalar_t__ INTEL_GVT_HYPERVISOR_XEN ; 
 int /*<<< orphan*/  INTEL_GVT_OPREGION_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ intel_gvt_host ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu*,int) ; 
 TYPE_1__* FUNC4 (struct intel_vgpu*) ; 

void FUNC5(struct intel_vgpu *vgpu)
{
	FUNC2("vgpu%d: clean vgpu opregion\n", vgpu->id);

	if (!FUNC4(vgpu)->va)
		return;

	if (intel_gvt_host.hypervisor_type == INTEL_GVT_HYPERVISOR_XEN) {
		if (FUNC4(vgpu)->mapped)
			FUNC3(vgpu, false);
	} else if (intel_gvt_host.hypervisor_type == INTEL_GVT_HYPERVISOR_KVM) {
		/* Guest opregion is released by VFIO */
	}
	FUNC0((unsigned long)FUNC4(vgpu)->va,
		   FUNC1(INTEL_GVT_OPREGION_SIZE));

	FUNC4(vgpu)->va = NULL;

}