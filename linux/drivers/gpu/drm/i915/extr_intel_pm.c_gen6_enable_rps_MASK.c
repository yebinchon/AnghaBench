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
struct drm_i915_private {int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  GEN6_RP_DOWN_TIMEOUT ; 
 int /*<<< orphan*/  GEN6_RP_IDLE_HYSTERSIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gen6_set_rps ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	/* Here begins a magic sequence of register writes to enable
	 * auto-downclocking.
	 *
	 * Perhaps there might be some value in exposing these to
	 * userspace...
	 */
	FUNC1(&dev_priv->uncore, FORCEWAKE_ALL);

	/* Power down if completely idle for over 50ms */
	FUNC0(GEN6_RP_DOWN_TIMEOUT, 50000);
	FUNC0(GEN6_RP_IDLE_HYSTERSIS, 10);

	FUNC3(dev_priv, gen6_set_rps);

	FUNC2(&dev_priv->uncore, FORCEWAKE_ALL);
}