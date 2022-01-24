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
struct vlv_wm_values {int /*<<< orphan*/  level; int /*<<< orphan*/  cxsr; } ;
struct TYPE_2__ {struct vlv_wm_values vlv; } ;
struct drm_i915_private {TYPE_1__ wm; } ;
typedef  int /*<<< orphan*/  new_wm ;

/* Variables and functions */
 int VLV_WM_LEVEL_DDR_DVFS ; 
 int VLV_WM_LEVEL_PM5 ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct vlv_wm_values*,struct vlv_wm_values*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,struct vlv_wm_values*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,struct vlv_wm_values*) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv)
{
	struct vlv_wm_values *old_wm = &dev_priv->wm.vlv;
	struct vlv_wm_values new_wm = {};

	FUNC6(dev_priv, &new_wm);

	if (FUNC5(old_wm, &new_wm, sizeof(new_wm)) == 0)
		return;

	if (FUNC3(old_wm->level, new_wm.level, VLV_WM_LEVEL_DDR_DVFS))
		FUNC1(dev_priv, false);

	if (FUNC3(old_wm->level, new_wm.level, VLV_WM_LEVEL_PM5))
		FUNC2(dev_priv, false);

	if (FUNC3(old_wm->cxsr, new_wm.cxsr, true))
		FUNC0(dev_priv, false);

	FUNC7(dev_priv, &new_wm);

	if (FUNC4(old_wm->cxsr, new_wm.cxsr, true))
		FUNC0(dev_priv, true);

	if (FUNC4(old_wm->level, new_wm.level, VLV_WM_LEVEL_PM5))
		FUNC2(dev_priv, true);

	if (FUNC4(old_wm->level, new_wm.level, VLV_WM_LEVEL_DDR_DVFS))
		FUNC1(dev_priv, true);

	*old_wm = new_wm;
}