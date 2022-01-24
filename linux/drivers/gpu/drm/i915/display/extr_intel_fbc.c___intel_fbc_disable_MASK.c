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
struct intel_fbc {int enabled; int active; struct intel_crtc* crtc; int /*<<< orphan*/  lock; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	struct intel_fbc *fbc = &dev_priv->fbc;
	struct intel_crtc *crtc = fbc->crtc;

	FUNC1(!FUNC3(&fbc->lock));
	FUNC1(!fbc->enabled);
	FUNC1(fbc->active);

	FUNC0("Disabling FBC on pipe %c\n", FUNC4(crtc->pipe));

	FUNC2(dev_priv);

	fbc->enabled = false;
	fbc->crtc = NULL;
}