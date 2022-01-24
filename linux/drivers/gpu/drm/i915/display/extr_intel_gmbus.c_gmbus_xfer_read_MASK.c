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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct i2c_msg {unsigned int len; int /*<<< orphan*/  addr; int /*<<< orphan*/ * buf; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_GMBUS_BURST_READ_MAX_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
		u32 gmbus0_reg, u32 gmbus1_index)
{
	u8 *buf = msg->buf;
	unsigned int rx_size = msg->len;
	unsigned int len;
	int ret;

	do {
		if (FUNC0(dev_priv))
			len = FUNC3(rx_size, INTEL_GMBUS_BURST_READ_MAX_LEN);
		else
			len = FUNC3(rx_size, FUNC1(dev_priv));

		ret = FUNC2(dev_priv, msg->addr, buf, len,
					    gmbus0_reg, gmbus1_index);
		if (ret)
			return ret;

		rx_size -= len;
		buf += len;
	} while (rx_size != 0);

	return 0;
}