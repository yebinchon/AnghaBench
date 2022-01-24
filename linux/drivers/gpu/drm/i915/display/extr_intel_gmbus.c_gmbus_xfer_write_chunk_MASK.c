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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMBUS1 ; 
 int /*<<< orphan*/  GMBUS3 ; 
 unsigned int GMBUS_BYTE_COUNT_SHIFT ; 
 int GMBUS_CYCLE_WAIT ; 
 int /*<<< orphan*/  GMBUS_HW_RDY ; 
 int /*<<< orphan*/  GMBUS_HW_RDY_EN ; 
 unsigned short GMBUS_SLAVE_ADDR_SHIFT ; 
 int GMBUS_SLAVE_WRITE ; 
 int GMBUS_SW_RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct drm_i915_private *dev_priv,
		       unsigned short addr, u8 *buf, unsigned int len,
		       u32 gmbus1_index)
{
	unsigned int chunk_size = len;
	u32 val, loop;

	val = loop = 0;
	while (len && loop < 4) {
		val |= *buf++ << (8 * loop++);
		len -= 1;
	}

	FUNC0(GMBUS3, val);
	FUNC0(GMBUS1,
		      gmbus1_index | GMBUS_CYCLE_WAIT |
		      (chunk_size << GMBUS_BYTE_COUNT_SHIFT) |
		      (addr << GMBUS_SLAVE_ADDR_SHIFT) |
		      GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);
	while (len) {
		int ret;

		val = loop = 0;
		do {
			val |= *buf++ << (8 * loop);
		} while (--len && ++loop < 4);

		FUNC0(GMBUS3, val);

		ret = FUNC1(dev_priv, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
		if (ret)
			return ret;
	}

	return 0;
}