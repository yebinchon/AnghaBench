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
typedef  int u32 ;
struct seq_file {int /*<<< orphan*/  private; } ;
struct intel_fbc {int /*<<< orphan*/  lock; int /*<<< orphan*/  no_fbc_reason; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; struct intel_fbc fbc; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int BDW_FBC_COMP_SEG_MASK ; 
 int DPFC_COMP_SEG_MASK ; 
 int /*<<< orphan*/  DPFC_STATUS ; 
 int ENODEV ; 
 int /*<<< orphan*/  FBC_STATUS ; 
 int FBC_STAT_COMPRESSED ; 
 int FBC_STAT_COMPRESSING ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ILK_DPFC_COMP_SEG_MASK ; 
 int /*<<< orphan*/  ILK_DPFC_STATUS ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int IVB_FBC_COMP_SEG_MASK ; 
 int /*<<< orphan*/  IVB_FBC_STATUS2 ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct seq_file *m, void *unused)
{
	struct drm_i915_private *dev_priv = FUNC9(m->private);
	struct intel_fbc *fbc = &dev_priv->fbc;
	intel_wakeref_t wakeref;

	if (!FUNC0(dev_priv))
		return -ENODEV;

	wakeref = FUNC5(&dev_priv->runtime_pm);
	FUNC7(&fbc->lock);

	if (FUNC4(dev_priv))
		FUNC11(m, "FBC enabled\n");
	else
		FUNC10(m, "FBC disabled: %s\n", fbc->no_fbc_reason);

	if (FUNC4(dev_priv)) {
		u32 mask;

		if (FUNC2(dev_priv) >= 8)
			mask = FUNC1(IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_MASK;
		else if (FUNC2(dev_priv) >= 7)
			mask = FUNC1(IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
		else if (FUNC2(dev_priv) >= 5)
			mask = FUNC1(ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
		else if (FUNC3(dev_priv))
			mask = FUNC1(DPFC_STATUS) & DPFC_COMP_SEG_MASK;
		else
			mask = FUNC1(FBC_STATUS) & (FBC_STAT_COMPRESSING |
							FBC_STAT_COMPRESSED);

		FUNC10(m, "Compressing: %s\n", FUNC12(mask));
	}

	FUNC8(&fbc->lock);
	FUNC6(&dev_priv->runtime_pm, wakeref);

	return 0;
}