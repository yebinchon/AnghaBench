#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_overlay {TYPE_1__* regs; int /*<<< orphan*/  active; struct drm_i915_private* i915; } ;
struct TYPE_5__ {int /*<<< orphan*/  connection_mutex; } ;
struct TYPE_6__ {TYPE_2__ mode_config; int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct TYPE_4__ {int /*<<< orphan*/  OCMD; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct intel_overlay*) ; 
 int FUNC3 (struct intel_overlay*) ; 
 int FUNC4 (struct intel_overlay*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct intel_overlay *overlay)
{
	struct drm_i915_private *dev_priv = overlay->i915;
	int ret;

	FUNC6(&dev_priv->drm.struct_mutex);
	FUNC0(!FUNC1(&dev_priv->drm.mode_config.connection_mutex));

	ret = FUNC3(overlay);
	if (ret != 0)
		return ret;

	if (!overlay->active)
		return 0;

	ret = FUNC4(overlay);
	if (ret != 0)
		return ret;

	FUNC5(0, &overlay->regs->OCMD);

	return FUNC2(overlay);
}