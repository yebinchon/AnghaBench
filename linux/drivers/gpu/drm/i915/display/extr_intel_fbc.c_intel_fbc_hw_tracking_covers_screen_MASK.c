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
struct TYPE_5__ {scalar_t__ adjusted_y; scalar_t__ adjusted_x; } ;
struct TYPE_6__ {TYPE_2__ plane; } ;
struct intel_fbc {TYPE_3__ state_cache; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned int*,unsigned int*) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC5(crtc->base.dev);
	struct intel_fbc *fbc = &dev_priv->fbc;
	unsigned int effective_w, effective_h, max_w, max_h;

	if (FUNC0(dev_priv) >= 10 || FUNC2(dev_priv)) {
		max_w = 5120;
		max_h = 4096;
	} else if (FUNC0(dev_priv) >= 8 || FUNC3(dev_priv)) {
		max_w = 4096;
		max_h = 4096;
	} else if (FUNC1(dev_priv) || FUNC0(dev_priv) >= 5) {
		max_w = 4096;
		max_h = 2048;
	} else {
		max_w = 2048;
		max_h = 1536;
	}

	FUNC4(&fbc->state_cache, &effective_w,
					&effective_h);
	effective_w += fbc->state_cache.plane.adjusted_x;
	effective_h += fbc->state_cache.plane.adjusted_y;

	return effective_w <= max_w && effective_h <= max_h;
}