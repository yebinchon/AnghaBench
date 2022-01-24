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
struct g4x_wm_values {int /*<<< orphan*/  cxsr; } ;
struct TYPE_2__ {struct g4x_wm_values g4x; } ;
struct drm_i915_private {TYPE_1__ wm; } ;
typedef  int /*<<< orphan*/  new_wm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,struct g4x_wm_values*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,struct g4x_wm_values*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct g4x_wm_values*,struct g4x_wm_values*,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	struct g4x_wm_values *old_wm = &dev_priv->wm.g4x;
	struct g4x_wm_values new_wm = {};

	FUNC1(dev_priv, &new_wm);

	if (FUNC5(old_wm, &new_wm, sizeof(new_wm)) == 0)
		return;

	if (FUNC3(old_wm->cxsr, new_wm.cxsr, true))
		FUNC0(dev_priv, false);

	FUNC2(dev_priv, &new_wm);

	if (FUNC4(old_wm->cxsr, new_wm.cxsr, true))
		FUNC0(dev_priv, true);

	*old_wm = new_wm;
}