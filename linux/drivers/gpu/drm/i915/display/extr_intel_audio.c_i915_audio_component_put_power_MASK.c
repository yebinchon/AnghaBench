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
struct drm_i915_private {scalar_t__ audio_power_refcount; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  POWER_DOMAIN_AUDIO ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,unsigned long) ; 
 struct drm_i915_private* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *kdev,
					   unsigned long cookie)
{
	struct drm_i915_private *dev_priv = FUNC4(kdev);

	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
	if (--dev_priv->audio_power_refcount == 0)
		if (FUNC0(dev_priv) || FUNC1(dev_priv))
			FUNC2(dev_priv, false);

	FUNC3(dev_priv, POWER_DOMAIN_AUDIO, cookie);
}