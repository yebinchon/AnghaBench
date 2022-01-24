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
struct intel_crtc {int cpu_fifo_underrun_disabled; } ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;
struct drm_device {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int,int,int) ; 
 struct intel_crtc* FUNC6 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC10 (struct drm_device*) ; 

__attribute__((used)) static bool FUNC11(struct drm_device *dev,
						    enum pipe pipe, bool enable)
{
	struct drm_i915_private *dev_priv = FUNC10(dev);
	struct intel_crtc *crtc = FUNC6(dev_priv, pipe);
	bool old;

	FUNC9(&dev_priv->irq_lock);

	old = !crtc->cpu_fifo_underrun_disabled;
	crtc->cpu_fifo_underrun_disabled = !enable;

	if (FUNC0(dev_priv))
		FUNC5(dev, pipe, enable, old);
	else if (FUNC3(dev_priv, 5, 6))
		FUNC7(dev, pipe, enable);
	else if (FUNC2(dev_priv, 7))
		FUNC8(dev, pipe, enable, old);
	else if (FUNC1(dev_priv) >= 8)
		FUNC4(dev, pipe, enable);

	return old;
}