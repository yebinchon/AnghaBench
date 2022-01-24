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
struct intel_gmbus {int reg0; int /*<<< orphan*/ * force_bit; } ;
struct i2c_adapter {struct drm_psb_private* algo_data; } ;
struct drm_psb_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct drm_psb_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct intel_gmbus* FUNC3 (struct i2c_adapter*) ; 

void FUNC4(struct i2c_adapter *adapter, bool force_bit)
{
	struct intel_gmbus *bus = FUNC3(adapter);

	if (force_bit) {
		if (bus->force_bit == NULL) {
			struct drm_psb_private *dev_priv = adapter->algo_data;
			bus->force_bit = FUNC1(dev_priv,
							   bus->reg0 & 0xff);
		}
	} else {
		if (bus->force_bit) {
			FUNC0(bus->force_bit);
			FUNC2(bus->force_bit);
			bus->force_bit = NULL;
		}
	}
}