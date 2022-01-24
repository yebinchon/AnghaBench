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
typedef  int u32 ;
struct drm_i915_private {int /*<<< orphan*/  sb_lock; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SBI_ICLK ; 
 int /*<<< orphan*/  SBI_SSCDITHPHASE ; 
 int /*<<< orphan*/  SBI_SSCDIVINTPHASE ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int* sscdivintphase ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *dev_priv, int steps)
{
	u32 tmp;
	int idx = FUNC1(steps);

	if (FUNC2(steps % 5 != 0))
		return;

	if (FUNC2(idx >= FUNC0(sscdivintphase)))
		return;

	FUNC5(&dev_priv->sb_lock);

	if (steps % 10 != 0)
		tmp = 0xAAAAAAAB;
	else
		tmp = 0x00000000;
	FUNC4(dev_priv, SBI_SSCDITHPHASE, tmp, SBI_ICLK);

	tmp = FUNC3(dev_priv, SBI_SSCDIVINTPHASE, SBI_ICLK);
	tmp &= 0xffff0000;
	tmp |= sscdivintphase[idx];
	FUNC4(dev_priv, SBI_SSCDIVINTPHASE, tmp, SBI_ICLK);

	FUNC6(&dev_priv->sb_lock);
}