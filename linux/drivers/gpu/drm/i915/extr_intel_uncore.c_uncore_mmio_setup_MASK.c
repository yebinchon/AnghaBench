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
struct pci_dev {int dummy; } ;
struct intel_uncore {int /*<<< orphan*/ * regs; struct drm_i915_private* i915; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EIO ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct pci_dev*,int,int) ; 

__attribute__((used)) static int FUNC4(struct intel_uncore *uncore)
{
	struct drm_i915_private *i915 = uncore->i915;
	struct pci_dev *pdev = i915->drm.pdev;
	int mmio_bar;
	int mmio_size;

	mmio_bar = FUNC2(i915, 2) ? 1 : 0;
	/*
	 * Before gen4, the registers and the GTT are behind different BARs.
	 * However, from gen4 onwards, the registers and the GTT are shared
	 * in the same BAR, so we want to restrict this ioremap from
	 * clobbering the GTT which we want ioremap_wc instead. Fortunately,
	 * the register BAR remains the same size for all the earlier
	 * generations up to Ironlake.
	 */
	if (FUNC1(i915) < 5)
		mmio_size = 512 * 1024;
	else
		mmio_size = 2 * 1024 * 1024;
	uncore->regs = FUNC3(pdev, mmio_bar, mmio_size);
	if (uncore->regs == NULL) {
		FUNC0("failed to map registers\n");

		return -EIO;
	}

	return 0;
}