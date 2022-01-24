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
 int CNP_PWM_CGE_GATING_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SOUTH_DSPCLK_GATE_D ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	if (!FUNC0(dev_priv))
		return;

	/* Display WA #1181 WaSouthDisplayDisablePWMCGEGating: cnp */
	FUNC2(SOUTH_DSPCLK_GATE_D, FUNC1(SOUTH_DSPCLK_GATE_D) |
		   CNP_PWM_CGE_GATING_DISABLE);
}