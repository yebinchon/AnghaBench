#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_fbc {int flip_pending; int active; int /*<<< orphan*/  busy_bits; int /*<<< orphan*/  params; struct intel_crtc* crtc; int /*<<< orphan*/  enabled; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
struct TYPE_4__ {int /*<<< orphan*/  enable_fbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 TYPE_2__ i915_modparams ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC7(crtc->base.dev);
	struct intel_fbc *fbc = &dev_priv->fbc;

	FUNC0(!FUNC6(&fbc->lock));

	if (!fbc->enabled || fbc->crtc != crtc)
		return;

	fbc->flip_pending = false;
	FUNC0(fbc->active);

	if (!i915_modparams.enable_fbc) {
		FUNC3(dev_priv, "disabled at runtime per module param");
		FUNC1(dev_priv);

		return;
	}

	FUNC4(crtc, &fbc->params);

	if (!FUNC2(crtc))
		return;

	if (!fbc->busy_bits) {
		FUNC3(dev_priv, "FBC enabled (active or scheduled)");
		FUNC5(dev_priv);
	} else
		FUNC3(dev_priv, "frontbuffer write");
}