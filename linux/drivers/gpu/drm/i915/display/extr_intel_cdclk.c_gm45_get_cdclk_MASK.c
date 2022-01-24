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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct intel_cdclk_state {int vco; int cdclk; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  GCFGC ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv,
			   struct intel_cdclk_state *cdclk_state)
{
	struct pci_dev *pdev = dev_priv->drm.pdev;
	unsigned int cdclk_sel;
	u16 tmp = 0;

	cdclk_state->vco = FUNC1(dev_priv);

	FUNC2(pdev, GCFGC, &tmp);

	cdclk_sel = (tmp >> 12) & 0x1;

	switch (cdclk_state->vco) {
	case 2666667:
	case 4000000:
	case 5333333:
		cdclk_state->cdclk = cdclk_sel ? 333333 : 222222;
		break;
	case 3200000:
		cdclk_state->cdclk = cdclk_sel ? 320000 : 228571;
		break;
	default:
		FUNC0("Unable to determine CDCLK. HPLL VCO=%u, CFGC=0x%04x\n",
			  cdclk_state->vco, tmp);
		cdclk_state->cdclk = 222222;
		break;
	}
}