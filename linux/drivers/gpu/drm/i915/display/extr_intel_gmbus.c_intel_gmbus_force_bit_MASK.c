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
struct intel_gmbus {int force_bit; struct drm_i915_private* dev_priv; } ;
struct i2c_adapter {int /*<<< orphan*/  name; } ;
struct drm_i915_private {int /*<<< orphan*/  gmbus_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct intel_gmbus* FUNC3 (struct i2c_adapter*) ; 

void FUNC4(struct i2c_adapter *adapter, bool force_bit)
{
	struct intel_gmbus *bus = FUNC3(adapter);
	struct drm_i915_private *dev_priv = bus->dev_priv;

	FUNC1(&dev_priv->gmbus_mutex);

	bus->force_bit += force_bit ? 1 : -1;
	FUNC0("%sabling bit-banging on %s. force bit now %d\n",
		      force_bit ? "en" : "dis", adapter->name,
		      bus->force_bit);

	FUNC2(&dev_priv->gmbus_mutex);
}