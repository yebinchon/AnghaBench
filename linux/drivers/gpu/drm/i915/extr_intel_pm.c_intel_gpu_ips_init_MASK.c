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

/* Variables and functions */
 int /*<<< orphan*/  i915_mch_dev ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct drm_i915_private*) ; 

void FUNC2(struct drm_i915_private *dev_priv)
{
	/* We only register the i915 ips part with intel-ips once everything is
	 * set up, to avoid intel-ips sneaking in and reading bogus values. */
	FUNC1(i915_mch_dev, dev_priv);

	FUNC0();
}