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
struct intel_uncore {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE ; 
 int /*<<< orphan*/  EDP_PSR_IIR ; 
 int /*<<< orphan*/  EDP_PSR_IMR ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEN7_ERR_INT ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	struct intel_uncore *uncore = &dev_priv->uncore;

	FUNC0(uncore, DE);
	if (FUNC1(dev_priv, 7))
		FUNC5(uncore, GEN7_ERR_INT, 0xffffffff);

	if (FUNC2(dev_priv)) {
		FUNC5(uncore, EDP_PSR_IMR, 0xffffffff);
		FUNC5(uncore, EDP_PSR_IIR, 0xffffffff);
	}

	FUNC3(&dev_priv->gt);

	FUNC4(dev_priv);
}