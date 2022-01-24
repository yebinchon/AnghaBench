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
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  cherryview_irq_handler ; 
 int /*<<< orphan*/  gen11_irq_handler ; 
 int /*<<< orphan*/  gen8_irq_handler ; 
 int /*<<< orphan*/  i8xx_irq_handler ; 
 int /*<<< orphan*/  i915_irq_handler ; 
 int /*<<< orphan*/  i965_irq_handler ; 
 int /*<<< orphan*/  ironlake_irq_handler ; 
 int /*<<< orphan*/  valleyview_irq_handler ; 

__attribute__((used)) static irq_handler_t FUNC5(struct drm_i915_private *dev_priv)
{
	if (FUNC0(dev_priv)) {
		if (FUNC2(dev_priv))
			return cherryview_irq_handler;
		else if (FUNC4(dev_priv))
			return valleyview_irq_handler;
		else if (FUNC3(dev_priv, 4))
			return i965_irq_handler;
		else if (FUNC3(dev_priv, 3))
			return i915_irq_handler;
		else
			return i8xx_irq_handler;
	} else {
		if (FUNC1(dev_priv) >= 11)
			return gen11_irq_handler;
		else if (FUNC1(dev_priv) >= 8)
			return gen8_irq_handler;
		else
			return ironlake_irq_handler;
	}
}