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
struct pci_dev {scalar_t__ vendor; unsigned short device; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; } ;
struct drm_i915_private {int pch_type; unsigned short pch_id; } ;
typedef  enum intel_pch { ____Placeholder_intel_pch } intel_pch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 unsigned short INTEL_PCH_DEVICE_ID_MASK ; 
 int PCH_NONE ; 
 int PCH_NOP ; 
 int PCI_CLASS_BRIDGE_ISA ; 
 scalar_t__ PCI_VENDOR_ID_INTEL ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*,unsigned short) ; 
 unsigned short FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct pci_dev* FUNC7 (int,struct pci_dev*) ; 

void FUNC8(struct drm_i915_private *dev_priv)
{
	struct pci_dev *pch = NULL;

	/*
	 * The reason to probe ISA bridge instead of Dev31:Fun0 is to
	 * make graphics device passthrough work easy for VMM, that only
	 * need to expose ISA bridge to let driver know the real hardware
	 * underneath. This is a requirement from virtualization team.
	 *
	 * In some virtualized environments (e.g. XEN), there is irrelevant
	 * ISA bridge in the system. To work reliably, we should scan trhough
	 * all the ISA bridge devices and check for the first match, instead
	 * of only checking the first one.
	 */
	while ((pch = FUNC7(PCI_CLASS_BRIDGE_ISA << 8, pch))) {
		unsigned short id;
		enum intel_pch pch_type;

		if (pch->vendor != PCI_VENDOR_ID_INTEL)
			continue;

		id = pch->device & INTEL_PCH_DEVICE_ID_MASK;

		pch_type = FUNC4(dev_priv, id);
		if (pch_type != PCH_NONE) {
			dev_priv->pch_type = pch_type;
			dev_priv->pch_id = id;
			break;
		} else if (FUNC3(id, pch->subsystem_vendor,
					     pch->subsystem_device)) {
			id = FUNC5(dev_priv);
			pch_type = FUNC4(dev_priv, id);

			/* Sanity check virtual PCH id */
			if (FUNC2(id && pch_type == PCH_NONE))
				id = 0;

			dev_priv->pch_type = pch_type;
			dev_priv->pch_id = id;
			break;
		}
	}

	/*
	 * Use PCH_NOP (PCH but no South Display) for PCH platforms without
	 * display.
	 */
	if (pch && !FUNC1(dev_priv)) {
		FUNC0("Display disabled, reverting to NOP PCH\n");
		dev_priv->pch_type = PCH_NOP;
		dev_priv->pch_id = 0;
	}

	if (!pch)
		FUNC0("No PCH found.\n");

	FUNC6(pch);
}