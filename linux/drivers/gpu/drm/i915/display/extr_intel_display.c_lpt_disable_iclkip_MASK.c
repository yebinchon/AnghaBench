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
struct drm_i915_private {int /*<<< orphan*/  sb_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIXCLK_GATE ; 
 int /*<<< orphan*/  PIXCLK_GATE_GATE ; 
 int /*<<< orphan*/  SBI_ICLK ; 
 int /*<<< orphan*/  SBI_SSCCTL6 ; 
 int /*<<< orphan*/  SBI_SSCCTL_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_i915_private *dev_priv)
{
	u32 temp;

	FUNC0(PIXCLK_GATE, PIXCLK_GATE_GATE);

	FUNC3(&dev_priv->sb_lock);

	temp = FUNC1(dev_priv, SBI_SSCCTL6, SBI_ICLK);
	temp |= SBI_SSCCTL_DISABLE;
	FUNC2(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);

	FUNC4(&dev_priv->sb_lock);
}