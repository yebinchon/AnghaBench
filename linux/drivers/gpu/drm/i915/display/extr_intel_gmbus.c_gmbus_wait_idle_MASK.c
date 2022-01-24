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
typedef  scalar_t__ u32 ;
struct drm_i915_private {int /*<<< orphan*/  gmbus_wait_queue; int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GMBUS2 ; 
 int /*<<< orphan*/  GMBUS4 ; 
 int /*<<< orphan*/  GMBUS_ACTIVE ; 
 scalar_t__ GMBUS_IDLE_EN ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC6(struct drm_i915_private *dev_priv)
{
	FUNC0(wait);
	u32 irq_enable;
	int ret;

	/* Important: The hw handles only the first bit, so set only one! */
	irq_enable = 0;
	if (FUNC1(dev_priv))
		irq_enable = GMBUS_IDLE_EN;

	FUNC3(&dev_priv->gmbus_wait_queue, &wait);
	FUNC2(GMBUS4, irq_enable);

	ret = FUNC4(&dev_priv->uncore,
					 GMBUS2, GMBUS_ACTIVE, 0,
					 10);

	FUNC2(GMBUS4, 0);
	FUNC5(&dev_priv->gmbus_wait_queue, &wait);

	return ret;
}