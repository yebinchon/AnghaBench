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
struct seq_file {int /*<<< orphan*/  private; } ;
struct intel_uncore {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bit_6_swizzle_y; int /*<<< orphan*/  bit_6_swizzle_x; } ;
struct drm_i915_private {int quirks; int /*<<< orphan*/  runtime_pm; TYPE_1__ mm; struct intel_uncore uncore; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_MODE ; 
 int /*<<< orphan*/  C0DRB3 ; 
 int /*<<< orphan*/  C1DRB3 ; 
 int /*<<< orphan*/  DCC ; 
 int /*<<< orphan*/  DCC2 ; 
 int /*<<< orphan*/  DISP_ARB_CTL ; 
 int /*<<< orphan*/  GAMTARBMODE ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  MAD_DIMM_C0 ; 
 int /*<<< orphan*/  MAD_DIMM_C1 ; 
 int /*<<< orphan*/  MAD_DIMM_C2 ; 
 int QUIRK_PIN_SWIZZLED_PAGES ; 
 int /*<<< orphan*/  TILECTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct seq_file *m, void *data)
{
	struct drm_i915_private *dev_priv = FUNC6(m->private);
	struct intel_uncore *uncore = &dev_priv->uncore;
	intel_wakeref_t wakeref;

	wakeref = FUNC2(&dev_priv->runtime_pm);

	FUNC7(m, "bit6 swizzle for X-tiling = %s\n",
		   FUNC9(dev_priv->mm.bit_6_swizzle_x));
	FUNC7(m, "bit6 swizzle for Y-tiling = %s\n",
		   FUNC9(dev_priv->mm.bit_6_swizzle_y));

	if (FUNC1(dev_priv, 3, 4)) {
		FUNC7(m, "DDC = 0x%08x\n",
			   FUNC4(uncore, DCC));
		FUNC7(m, "DDC2 = 0x%08x\n",
			   FUNC4(uncore, DCC2));
		FUNC7(m, "C0DRB3 = 0x%04x\n",
			   FUNC5(uncore, C0DRB3));
		FUNC7(m, "C1DRB3 = 0x%04x\n",
			   FUNC5(uncore, C1DRB3));
	} else if (FUNC0(dev_priv) >= 6) {
		FUNC7(m, "MAD_DIMM_C0 = 0x%08x\n",
			   FUNC4(uncore, MAD_DIMM_C0));
		FUNC7(m, "MAD_DIMM_C1 = 0x%08x\n",
			   FUNC4(uncore, MAD_DIMM_C1));
		FUNC7(m, "MAD_DIMM_C2 = 0x%08x\n",
			   FUNC4(uncore, MAD_DIMM_C2));
		FUNC7(m, "TILECTL = 0x%08x\n",
			   FUNC4(uncore, TILECTL));
		if (FUNC0(dev_priv) >= 8)
			FUNC7(m, "GAMTARBMODE = 0x%08x\n",
				   FUNC4(uncore, GAMTARBMODE));
		else
			FUNC7(m, "ARB_MODE = 0x%08x\n",
				   FUNC4(uncore, ARB_MODE));
		FUNC7(m, "DISP_ARB_CTL = 0x%08x\n",
			   FUNC4(uncore, DISP_ARB_CTL));
	}

	if (dev_priv->quirks & QUIRK_PIN_SWIZZLED_PAGES)
		FUNC8(m, "L-shaped memory detected\n");

	FUNC3(&dev_priv->runtime_pm, wakeref);

	return 0;
}