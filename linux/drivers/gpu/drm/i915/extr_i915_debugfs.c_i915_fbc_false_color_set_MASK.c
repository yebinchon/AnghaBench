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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ false_color; } ;
struct drm_i915_private {TYPE_1__ fbc; } ;

/* Variables and functions */
 int ENODEV ; 
 int FBC_CTL_FALSE_COLOR ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ILK_DPFC_CONTROL ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void *data, u64 val)
{
	struct drm_i915_private *dev_priv = data;
	u32 reg;

	if (FUNC3(dev_priv) < 7 || !FUNC0(dev_priv))
		return -ENODEV;

	FUNC4(&dev_priv->fbc.lock);

	reg = FUNC1(ILK_DPFC_CONTROL);
	dev_priv->fbc.false_color = val;

	FUNC2(ILK_DPFC_CONTROL, val ?
		   (reg | FBC_CTL_FALSE_COLOR) :
		   (reg & ~FBC_CTL_FALSE_COLOR));

	FUNC5(&dev_priv->fbc.lock);
	return 0;
}