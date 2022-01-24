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
struct intel_fbc {int enabled; int active; char* no_fbc_reason; int /*<<< orphan*/  lock; struct intel_crtc* crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  enable_fbc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_1__ base; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc*,struct intel_crtc_state*,struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct intel_crtc *crtc,
		      struct intel_crtc_state *crtc_state,
		      struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	struct intel_fbc *fbc = &dev_priv->fbc;

	if (!FUNC2(dev_priv))
		return;

	FUNC5(&fbc->lock);

	if (fbc->enabled) {
		FUNC1(fbc->crtc == NULL);
		if (fbc->crtc == crtc) {
			FUNC1(!crtc_state->enable_fbc);
			FUNC1(fbc->active);
		}
		goto out;
	}

	if (!crtc_state->enable_fbc)
		goto out;

	FUNC1(fbc->active);
	FUNC1(fbc->crtc != NULL);

	FUNC4(crtc, crtc_state, plane_state);
	if (FUNC3(crtc)) {
		fbc->no_fbc_reason = "not enough stolen memory";
		goto out;
	}

	FUNC0("Enabling FBC on pipe %c\n", FUNC7(crtc->pipe));
	fbc->no_fbc_reason = "FBC enabled but not active yet\n";

	fbc->enabled = true;
	fbc->crtc = crtc;
out:
	FUNC6(&fbc->lock);
}