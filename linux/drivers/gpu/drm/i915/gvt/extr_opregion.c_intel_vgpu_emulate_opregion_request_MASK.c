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
typedef  int u64 ;
typedef  int u32 ;
struct intel_vgpu {int dummy; } ;
typedef  int /*<<< orphan*/  scic ;
typedef  int /*<<< orphan*/  parm ;
struct TYPE_4__ {int hypervisor_type; } ;
struct TYPE_3__ {int* gfn; scalar_t__ va; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  INTEL_GVT_HYPERVISOR_KVM 129 
#define  INTEL_GVT_HYPERVISOR_XEN 128 
 int INTEL_GVT_OPREGION_PARM ; 
 int INTEL_GVT_OPREGION_SCIC ; 
 size_t INTEL_GVT_PCI_SWSCI ; 
 int OPREGION_SCIC_EXIT_MASK ; 
 int PAGE_SHIFT ; 
 int SWSCI_SCI_SELECT ; 
 int SWSCI_SCI_TRIGGER ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_2__ intel_gvt_host ; 
 int FUNC3 (struct intel_vgpu*,int,int*,int) ; 
 int FUNC4 (struct intel_vgpu*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int* FUNC8 (struct intel_vgpu*) ; 
 TYPE_1__* FUNC9 (struct intel_vgpu*) ; 

int FUNC10(struct intel_vgpu *vgpu, u32 swsci)
{
	u32 scic, parm;
	u32 func, subfunc;
	u64 scic_pa = 0, parm_pa = 0;
	int ret;

	switch (intel_gvt_host.hypervisor_type) {
	case INTEL_GVT_HYPERVISOR_XEN:
		scic = *((u32 *)FUNC9(vgpu)->va +
					INTEL_GVT_OPREGION_SCIC);
		parm = *((u32 *)FUNC9(vgpu)->va +
					INTEL_GVT_OPREGION_PARM);
		break;
	case INTEL_GVT_HYPERVISOR_KVM:
		scic_pa = (FUNC9(vgpu)->gfn[0] << PAGE_SHIFT) +
					INTEL_GVT_OPREGION_SCIC;
		parm_pa = (FUNC9(vgpu)->gfn[0] << PAGE_SHIFT) +
					INTEL_GVT_OPREGION_PARM;

		ret = FUNC3(vgpu, scic_pa,
						    &scic, sizeof(scic));
		if (ret) {
			FUNC2("guest opregion read error %d, gpa 0x%llx, len %lu\n",
				ret, scic_pa, sizeof(scic));
			return ret;
		}

		ret = FUNC3(vgpu, parm_pa,
						    &parm, sizeof(parm));
		if (ret) {
			FUNC2("guest opregion read error %d, gpa 0x%llx, len %lu\n",
				ret, scic_pa, sizeof(scic));
			return ret;
		}

		break;
	default:
		FUNC2("not supported hypervisor\n");
		return -EINVAL;
	}

	if (!(swsci & SWSCI_SCI_SELECT)) {
		FUNC2("requesting SMI service\n");
		return 0;
	}
	/* ignore non 0->1 trasitions */
	if ((FUNC8(vgpu)[INTEL_GVT_PCI_SWSCI]
				& SWSCI_SCI_TRIGGER) ||
			!(swsci & SWSCI_SCI_TRIGGER)) {
		return 0;
	}

	func = FUNC0(scic);
	subfunc = FUNC1(scic);
	if (!FUNC7(scic)) {
		FUNC2("requesting runtime service: func \"%s\","
				" subfunc \"%s\"\n",
				FUNC5(func),
				FUNC6(subfunc));
		/*
		 * emulate exit status of function call, '0' means
		 * "failure, generic, unsupported or unknown cause"
		 */
		scic &= ~OPREGION_SCIC_EXIT_MASK;
		goto out;
	}

	scic = 0;
	parm = 0;

out:
	switch (intel_gvt_host.hypervisor_type) {
	case INTEL_GVT_HYPERVISOR_XEN:
		*((u32 *)FUNC9(vgpu)->va +
					INTEL_GVT_OPREGION_SCIC) = scic;
		*((u32 *)FUNC9(vgpu)->va +
					INTEL_GVT_OPREGION_PARM) = parm;
		break;
	case INTEL_GVT_HYPERVISOR_KVM:
		ret = FUNC4(vgpu, scic_pa,
						    &scic, sizeof(scic));
		if (ret) {
			FUNC2("guest opregion write error %d, gpa 0x%llx, len %lu\n",
				ret, scic_pa, sizeof(scic));
			return ret;
		}

		ret = FUNC4(vgpu, parm_pa,
						    &parm, sizeof(parm));
		if (ret) {
			FUNC2("guest opregion write error %d, gpa 0x%llx, len %lu\n",
				ret, scic_pa, sizeof(scic));
			return ret;
		}

		break;
	default:
		FUNC2("not supported hypervisor\n");
		return -EINVAL;
	}

	return 0;
}