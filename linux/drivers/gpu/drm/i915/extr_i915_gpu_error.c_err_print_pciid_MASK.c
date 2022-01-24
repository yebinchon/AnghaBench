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
struct pci_dev {int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  revision; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_i915_error_state_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_error_state_buf*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC1(struct drm_i915_error_state_buf *m,
			    struct drm_i915_private *i915)
{
	struct pci_dev *pdev = i915->drm.pdev;

	FUNC0(m, "PCI ID: 0x%04x\n", pdev->device);
	FUNC0(m, "PCI Revision: 0x%02x\n", pdev->revision);
	FUNC0(m, "PCI Subsystem: %04x:%04x\n",
		   pdev->subsystem_vendor,
		   pdev->subsystem_device);
}