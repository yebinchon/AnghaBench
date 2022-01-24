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
struct intel_overlay {int /*<<< orphan*/  last_flip; int /*<<< orphan*/  reg_bo; int /*<<< orphan*/  active; } ;
struct drm_i915_private {int /*<<< orphan*/  overlay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct intel_overlay* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_overlay*) ; 

void FUNC5(struct drm_i915_private *dev_priv)
{
	struct intel_overlay *overlay;

	overlay = FUNC1(&dev_priv->overlay);
	if (!overlay)
		return;

	/*
	 * The bo's should be free'd by the generic code already.
	 * Furthermore modesetting teardown happens beforehand so the
	 * hardware should be off already.
	 */
	FUNC0(overlay->active);

	FUNC3(overlay->reg_bo);
	FUNC2(&overlay->last_flip);

	FUNC4(overlay);
}