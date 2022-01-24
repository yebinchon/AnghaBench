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
struct intel_plane {int id; int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int SP_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6(struct intel_plane *plane,
		       enum pipe *pipe)
{
	struct drm_i915_private *dev_priv = FUNC5(plane->base.dev);
	enum intel_display_power_domain power_domain;
	enum plane_id plane_id = plane->id;
	intel_wakeref_t wakeref;
	bool ret;

	power_domain = FUNC1(plane->pipe);
	wakeref = FUNC3(dev_priv, power_domain);
	if (!wakeref)
		return false;

	ret = FUNC0(FUNC2(plane->pipe, plane_id)) & SP_ENABLE;

	*pipe = plane->pipe;

	FUNC4(dev_priv, power_domain, wakeref);

	return ret;
}