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
struct intel_gmbus {struct drm_i915_private* dev_priv; } ;
struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  gmbus_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct intel_gmbus* FUNC1 (struct i2c_adapter*) ; 

__attribute__((used)) static void FUNC2(struct i2c_adapter *adapter,
			     unsigned int flags)
{
	struct intel_gmbus *bus = FUNC1(adapter);
	struct drm_i915_private *dev_priv = bus->dev_priv;

	FUNC0(&dev_priv->gmbus_mutex);
}