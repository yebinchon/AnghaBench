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
struct drm_i915_private {int /*<<< orphan*/  gmbus_wait_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GMBUS2 ; 
 int /*<<< orphan*/  GMBUS4 ; 
 int GMBUS_SATOER ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
{
	FUNC0(wait);
	u32 gmbus2;
	int ret;

	/* Important: The hw handles only the first bit, so set only one! Since
	 * we also need to check for NAKs besides the hw ready/idle signal, we
	 * need to wake up periodically and check that ourselves.
	 */
	if (!FUNC1(dev_priv))
		irq_en = 0;

	FUNC4(&dev_priv->gmbus_wait_queue, &wait);
	FUNC3(GMBUS4, irq_en);

	status |= GMBUS_SATOER;
	ret = FUNC7((gmbus2 = FUNC2(GMBUS2)) & status, 2);
	if (ret)
		ret = FUNC6((gmbus2 = FUNC2(GMBUS2)) & status, 50);

	FUNC3(GMBUS4, 0);
	FUNC5(&dev_priv->gmbus_wait_queue, &wait);

	if (gmbus2 & GMBUS_SATOER)
		return -ENXIO;

	return ret;
}