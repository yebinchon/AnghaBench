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
struct seq_file {int /*<<< orphan*/  private; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSPFW3 ; 
 int /*<<< orphan*/  FW_BLC_SELF ; 
 int FW_BLC_SELF_EN ; 
 int /*<<< orphan*/  FW_BLC_SELF_VLV ; 
 int FW_CSPWRDWNEN ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSTPM ; 
 int INSTPM_SELF_EN ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 int PINEVIEW_SELF_REFRESH_EN ; 
 int /*<<< orphan*/  POWER_DOMAIN_INIT ; 
 int /*<<< orphan*/  WM1_LP_ILK ; 
 int WM1_LP_SR_EN ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct seq_file *m, void *unused)
{
	struct drm_i915_private *dev_priv = FUNC14(m->private);
	intel_wakeref_t wakeref;
	bool sr_enabled = false;

	wakeref = FUNC12(dev_priv, POWER_DOMAIN_INIT);

	if (FUNC2(dev_priv) >= 9)
		/* no global SR status; inspect per-plane WM */;
	else if (FUNC0(dev_priv))
		sr_enabled = FUNC1(WM1_LP_ILK) & WM1_LP_SR_EN;
	else if (FUNC8(dev_priv) || FUNC4(dev_priv) ||
		 FUNC6(dev_priv) || FUNC7(dev_priv))
		sr_enabled = FUNC1(FW_BLC_SELF) & FW_BLC_SELF_EN;
	else if (FUNC5(dev_priv))
		sr_enabled = FUNC1(INSTPM) & INSTPM_SELF_EN;
	else if (FUNC9(dev_priv))
		sr_enabled = FUNC1(DSPFW3) & PINEVIEW_SELF_REFRESH_EN;
	else if (FUNC10(dev_priv) || FUNC3(dev_priv))
		sr_enabled = FUNC1(FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;

	FUNC13(dev_priv, POWER_DOMAIN_INIT, wakeref);

	FUNC15(m, "self-refresh: %s\n", FUNC11(sr_enabled));

	return 0;
}