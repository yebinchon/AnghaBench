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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int MCURSOR_MODE ; 
 int MCURSOR_PIPE_SELECT_MASK ; 
 int MCURSOR_PIPE_SELECT_SHIFT ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct intel_plane *plane,
				     enum pipe *pipe)
{
	struct drm_i915_private *dev_priv = FUNC7(plane->base.dev);
	enum intel_display_power_domain power_domain;
	intel_wakeref_t wakeref;
	bool ret;
	u32 val;

	/*
	 * Not 100% correct for planes that can move between pipes,
	 * but that's only the case for gen2-3 which don't have any
	 * display power wells.
	 */
	power_domain = FUNC4(plane->pipe);
	wakeref = FUNC5(dev_priv, power_domain);
	if (!wakeref)
		return false;

	val = FUNC1(FUNC0(plane->pipe));

	ret = val & MCURSOR_MODE;

	if (FUNC2(dev_priv) >= 5 || FUNC3(dev_priv))
		*pipe = plane->pipe;
	else
		*pipe = (val & MCURSOR_PIPE_SELECT_MASK) >>
			MCURSOR_PIPE_SELECT_SHIFT;

	FUNC6(dev_priv, power_domain, wakeref);

	return ret;
}