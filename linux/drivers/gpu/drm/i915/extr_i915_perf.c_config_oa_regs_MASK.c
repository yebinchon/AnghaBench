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
struct i915_oa_reg {int /*<<< orphan*/  value; int /*<<< orphan*/  addr; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct drm_i915_private *dev_priv,
			   const struct i915_oa_reg *regs,
			   u32 n_regs)
{
	u32 i;

	for (i = 0; i < n_regs; i++) {
		const struct i915_oa_reg *reg = regs + i;

		FUNC0(reg->addr, reg->value);
	}
}