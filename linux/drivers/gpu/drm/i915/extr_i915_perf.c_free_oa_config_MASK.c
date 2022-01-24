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
struct i915_oa_config {struct i915_oa_config* mux_regs; struct i915_oa_config* b_counter_regs; struct i915_oa_config* flex_regs; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_oa_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_oa_config*) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv,
			   struct i915_oa_config *oa_config)
{
	if (!FUNC0(oa_config->flex_regs))
		FUNC1(oa_config->flex_regs);
	if (!FUNC0(oa_config->b_counter_regs))
		FUNC1(oa_config->b_counter_regs);
	if (!FUNC0(oa_config->mux_regs))
		FUNC1(oa_config->mux_regs);
	FUNC1(oa_config);
}