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
typedef  int /*<<< orphan*/  uint_fixed_16_16_t ;
typedef  int u8 ;
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FP_16_16_MAX ; 
 int FUNC0 (struct drm_i915_private const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static uint_fixed_16_16_t
FUNC3(const struct drm_i915_private *dev_priv, u32 pixel_rate,
	       u8 cpp, u32 latency, u32 dbuf_block_size)
{
	u32 wm_intermediate_val;
	uint_fixed_16_16_t ret;

	if (latency == 0)
		return FP_16_16_MAX;

	wm_intermediate_val = latency * pixel_rate * cpp;
	ret = FUNC2(wm_intermediate_val, 1000 * dbuf_block_size);

	if (FUNC0(dev_priv) >= 10)
		ret = FUNC1(ret, 1);

	return ret;
}