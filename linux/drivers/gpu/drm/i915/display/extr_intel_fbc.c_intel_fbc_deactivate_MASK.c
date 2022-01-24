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
struct intel_fbc {char const* no_fbc_reason; scalar_t__ active; int /*<<< orphan*/  lock; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv,
				 const char *reason)
{
	struct intel_fbc *fbc = &dev_priv->fbc;

	FUNC0(!FUNC2(&fbc->lock));

	if (fbc->active)
		FUNC1(dev_priv);

	fbc->no_fbc_reason = reason;
}