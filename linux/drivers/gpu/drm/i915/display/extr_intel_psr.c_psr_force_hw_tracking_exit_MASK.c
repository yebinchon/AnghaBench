#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {TYPE_1__ psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	if (FUNC2(dev_priv) >= 9)
		/*
		 * Display WA #0884: skl+
		 * This documented WA for bxt can be safely applied
		 * broadly so we can force HW tracking to exit PSR
		 * instead of disabling and re-enabling.
		 * Workaround tells us to write 0 to CUR_SURFLIVE_A,
		 * but it makes more sense write to the current active
		 * pipe.
		 */
		FUNC1(FUNC0(dev_priv->psr.pipe), 0);
	else
		/*
		 * A write to CURSURFLIVE do not cause HW tracking to exit PSR
		 * on older gens so doing the manual exit instead.
		 */
		FUNC3(dev_priv);
}