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
struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PIPECONF_ENABLE ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  PIPE_B ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv,
					 struct i915_power_well *power_well)
{
	if ((FUNC0(FUNC1(PIPE_A)) & PIPECONF_ENABLE) == 0)
		FUNC2(dev_priv, PIPE_A);
	if ((FUNC0(FUNC1(PIPE_B)) & PIPECONF_ENABLE) == 0)
		FUNC2(dev_priv, PIPE_B);
}