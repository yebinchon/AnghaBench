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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CURSOR_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PIPE_A ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct intel_plane *plane,
				     enum pipe *pipe)
{
	struct drm_i915_private *dev_priv = FUNC5(plane->base.dev);
	enum intel_display_power_domain power_domain;
	intel_wakeref_t wakeref;
	bool ret;

	power_domain = FUNC2(PIPE_A);
	wakeref = FUNC3(dev_priv, power_domain);
	if (!wakeref)
		return false;

	ret = FUNC1(FUNC0(PIPE_A)) & CURSOR_ENABLE;

	*pipe = PIPE_A;

	FUNC4(dev_priv, power_domain, wakeref);

	return ret;
}