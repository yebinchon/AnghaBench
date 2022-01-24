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
struct intel_fbc {int /*<<< orphan*/ * compressed_llb; int /*<<< orphan*/  compressed_fb; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	struct intel_fbc *fbc = &dev_priv->fbc;

	if (FUNC0(&fbc->compressed_fb))
		FUNC1(dev_priv, &fbc->compressed_fb);

	if (fbc->compressed_llb) {
		FUNC1(dev_priv, fbc->compressed_llb);
		FUNC2(fbc->compressed_llb);
	}
}