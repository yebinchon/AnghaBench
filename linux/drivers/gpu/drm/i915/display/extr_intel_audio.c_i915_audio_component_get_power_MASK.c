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
struct drm_i915_private {int /*<<< orphan*/  audio_power_refcount; } ;
struct device {int dummy; } ;
typedef  unsigned long intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  POWER_DOMAIN_AUDIO ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 unsigned long FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (struct device*) ; 

__attribute__((used)) static unsigned long FUNC6(struct device *kdev)
{
	struct drm_i915_private *dev_priv = FUNC5(kdev);
	intel_wakeref_t ret;

	/* Catch potential impedance mismatches before they occur! */
	FUNC0(sizeof(intel_wakeref_t) > sizeof(unsigned long));

	ret = FUNC4(dev_priv, POWER_DOMAIN_AUDIO);

	/* Force CDCLK to 2*BCLK as long as we need audio to be powered. */
	if (dev_priv->audio_power_refcount++ == 0)
		if (FUNC1(dev_priv) || FUNC2(dev_priv))
			FUNC3(dev_priv, true);

	return ret;
}