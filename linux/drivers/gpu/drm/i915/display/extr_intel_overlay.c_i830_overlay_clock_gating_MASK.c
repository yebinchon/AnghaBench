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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSPCLK_GATE_D ; 
 int /*<<< orphan*/  I830_CLOCK_GATE ; 
 int /*<<< orphan*/  I830_L2_CACHE_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OVRUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv,
				      bool enable)
{
	struct pci_dev *pdev = dev_priv->drm.pdev;
	u8 val;

	/* WA_OVERLAY_CLKGATE:alm */
	if (enable)
		FUNC0(DSPCLK_GATE_D, 0);
	else
		FUNC0(DSPCLK_GATE_D, OVRUNIT_CLOCK_GATE_DISABLE);

	/* WA_DISABLE_L2CACHE_CLOCK_GATING:alm */
	FUNC2(pdev->bus,
				 FUNC1(0, 0), I830_CLOCK_GATE, &val);
	if (enable)
		val &= ~I830_L2_CACHE_CLOCK_GATE_DISABLE;
	else
		val |= I830_L2_CACHE_CLOCK_GATE_DISABLE;
	FUNC3(pdev->bus,
				  FUNC1(0, 0), I830_CLOCK_GATE, val);
}