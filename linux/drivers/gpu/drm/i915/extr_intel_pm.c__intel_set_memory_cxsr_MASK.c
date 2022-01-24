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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSPFW3 ; 
 int /*<<< orphan*/  FW_BLC_SELF ; 
 int FW_BLC_SELF_EN ; 
 int /*<<< orphan*/  FW_BLC_SELF_VLV ; 
 int FW_CSPWRDWNEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INSTPM ; 
 int INSTPM_SELF_EN ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 int PINEVIEW_SELF_REFRESH_EN ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,int,int) ; 

__attribute__((used)) static bool FUNC16(struct drm_i915_private *dev_priv, bool enable)
{
	bool was_enabled;
	u32 val;

	if (FUNC10(dev_priv) || FUNC3(dev_priv)) {
		was_enabled = FUNC1(FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
		FUNC2(FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
		FUNC11(FW_BLC_SELF_VLV);
	} else if (FUNC4(dev_priv) || FUNC8(dev_priv)) {
		was_enabled = FUNC1(FW_BLC_SELF) & FW_BLC_SELF_EN;
		FUNC2(FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
		FUNC11(FW_BLC_SELF);
	} else if (FUNC9(dev_priv)) {
		val = FUNC1(DSPFW3);
		was_enabled = val & PINEVIEW_SELF_REFRESH_EN;
		if (enable)
			val |= PINEVIEW_SELF_REFRESH_EN;
		else
			val &= ~PINEVIEW_SELF_REFRESH_EN;
		FUNC2(DSPFW3, val);
		FUNC11(DSPFW3);
	} else if (FUNC6(dev_priv) || FUNC7(dev_priv)) {
		was_enabled = FUNC1(FW_BLC_SELF) & FW_BLC_SELF_EN;
		val = enable ? FUNC13(FW_BLC_SELF_EN) :
			       FUNC12(FW_BLC_SELF_EN);
		FUNC2(FW_BLC_SELF, val);
		FUNC11(FW_BLC_SELF);
	} else if (FUNC5(dev_priv)) {
		/*
		 * FIXME can't find a bit like this for 915G, and
		 * and yet it does have the related watermark in
		 * FW_BLC_SELF. What's going on?
		 */
		was_enabled = FUNC1(INSTPM) & INSTPM_SELF_EN;
		val = enable ? FUNC13(INSTPM_SELF_EN) :
			       FUNC12(INSTPM_SELF_EN);
		FUNC2(INSTPM, val);
		FUNC11(INSTPM);
	} else {
		return false;
	}

	FUNC15(dev_priv, was_enabled, enable);

	FUNC0("memory self-refresh is %s (was %s)\n",
		      FUNC14(enable),
		      FUNC14(was_enabled));

	return was_enabled;
}