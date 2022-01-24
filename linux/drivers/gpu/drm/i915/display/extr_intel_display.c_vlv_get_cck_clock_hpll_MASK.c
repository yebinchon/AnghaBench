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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {scalar_t__ hpll_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (struct drm_i915_private*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 

int FUNC4(struct drm_i915_private *dev_priv,
			   const char *name, u32 reg)
{
	int hpll;

	FUNC0(dev_priv);

	if (dev_priv->hpll_freq == 0)
		dev_priv->hpll_freq = FUNC3(dev_priv);

	hpll = FUNC2(dev_priv, name, reg, dev_priv->hpll_freq);

	FUNC1(dev_priv);

	return hpll;
}