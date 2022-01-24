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
struct drm_i915_private {int /*<<< orphan*/  rawclk_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ PCH_CNP ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 

void FUNC11(struct drm_i915_private *dev_priv)
{
	if (FUNC2(dev_priv) >= PCH_CNP)
		dev_priv->rawclk_freq = FUNC7(dev_priv);
	else if (FUNC1(dev_priv))
		dev_priv->rawclk_freq = FUNC9(dev_priv);
	else if (FUNC6(dev_priv) || FUNC3(dev_priv))
		dev_priv->rawclk_freq = FUNC10(dev_priv);
	else if (FUNC4(dev_priv) || FUNC5(dev_priv))
		dev_priv->rawclk_freq = FUNC8(dev_priv);
	else
		/* no rawclk on other platforms, or no need to know it */
		return;

	FUNC0("rawclk rate: %d kHz\n", dev_priv->rawclk_freq);
}