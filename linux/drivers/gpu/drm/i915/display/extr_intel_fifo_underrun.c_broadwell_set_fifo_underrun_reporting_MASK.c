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
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  GEN8_PIPE_FIFO_UNDERRUN ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC2 (struct drm_device*) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev,
						  enum pipe pipe, bool enable)
{
	struct drm_i915_private *dev_priv = FUNC2(dev);

	if (enable)
		FUNC1(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
	else
		FUNC0(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
}