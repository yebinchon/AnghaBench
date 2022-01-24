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
struct intel_plane_state {int dummy; } ;
struct intel_fbc {int flip_pending; int /*<<< orphan*/  lock; struct intel_crtc* crtc; int /*<<< orphan*/  enabled; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc*,struct intel_crtc_state*,struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc*,struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct intel_crtc *crtc,
			  struct intel_crtc_state *crtc_state,
			  struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	struct intel_fbc *fbc = &dev_priv->fbc;
	const char *reason = "update pending";

	if (!FUNC0(dev_priv))
		return;

	FUNC4(&fbc->lock);

	if (!FUNC3(crtc, plane_state)) {
		reason = "more than one pipe active";
		goto deactivate;
	}

	if (!fbc->enabled || fbc->crtc != crtc)
		goto unlock;

	FUNC2(crtc, crtc_state, plane_state);
	fbc->flip_pending = true;

deactivate:
	FUNC1(dev_priv, reason);
unlock:
	FUNC5(&fbc->lock);
}