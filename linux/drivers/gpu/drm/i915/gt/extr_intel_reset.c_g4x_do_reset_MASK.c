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
struct pci_dev {int dummy; } ;
struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; TYPE_2__* i915; } ;
typedef  int /*<<< orphan*/  intel_engine_mask_t ;
struct TYPE_3__ {struct pci_dev* pdev; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int GRDOM_MEDIA ; 
 int GRDOM_RENDER ; 
 int GRDOM_RESET_ENABLE ; 
 int /*<<< orphan*/  I915_GDRST ; 
 int /*<<< orphan*/  VCP_UNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  VDECCLK_GATE_D ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct intel_gt *gt,
			intel_engine_mask_t engine_mask,
			unsigned int retry)
{
	struct pci_dev *pdev = gt->i915->drm.pdev;
	struct intel_uncore *uncore = gt->uncore;
	int ret;

	/* WaVcpClkGateDisableForMediaReset:ctg,elk */
	FUNC5(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE);
	FUNC2(uncore, VDECCLK_GATE_D);

	FUNC3(pdev, I915_GDRST,
			      GRDOM_MEDIA | GRDOM_RESET_ENABLE);
	ret =  FUNC6(FUNC1(pdev), 50);
	if (ret) {
		FUNC0("Wait for media reset failed\n");
		goto out;
	}

	FUNC3(pdev, I915_GDRST,
			      GRDOM_RENDER | GRDOM_RESET_ENABLE);
	ret =  FUNC6(FUNC1(pdev), 50);
	if (ret) {
		FUNC0("Wait for render reset failed\n");
		goto out;
	}

out:
	FUNC3(pdev, I915_GDRST, 0);

	FUNC4(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE);
	FUNC2(uncore, VDECCLK_GATE_D);

	return ret;
}